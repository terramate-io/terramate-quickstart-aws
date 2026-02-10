generate_hcl "main.tf" {
  condition = global.generators.version == "v1"

  stack_filter {
    project_paths = ["**/stacks/terraform/envs/*/eks/apps/*"]
  }

  content {
    locals {
      app_name = "${terramate.stack.path.basename}-${global.terraform.env}"
    }

    resource "kubernetes_deployment" "app" {
      metadata {
        name      = local.app_name
        namespace = global.eks.namespace
      }
      spec {
        replicas = tm_try(global.app.replicas, 1)
        selector {
          match_labels = {
            app = local.app_name
          }
        }
        template {
          metadata {
            labels = {
              app = local.app_name
            }
          }
          spec {
            container {
              image = global.app.image
              name  = global.app.container_name
              port {
                container_port = tm_try(global.app.container_port, 8080)
              }
              resources {
                requests = {
                  cpu    = tm_try(global.app.resources.requests.cpu, "50m")
                  memory = tm_try(global.app.resources.requests.memory, "100Mi")
                }
                limits = {
                  cpu    = tm_try(global.app.resources.limits.cpu, "50m")
                  memory = tm_try(global.app.resources.limits.memory, "100Mi")
                }
              }
            }
          }
        }
      }
      timeouts {
        create = "3m"
        delete = "3m"
        update = "3m"
      }
    }

    resource "kubernetes_service" "app" {
      metadata {
        name      = local.app_name
        namespace = global.eks.namespace
      }
      spec {
        type = "LoadBalancer"
        port {
          port        = 80
          protocol    = "TCP"
          target_port = tm_try(global.app.container_port, 8080)
        }
        selector = {
          app = local.app_name
        }
      }
      # Don't block on ELB provisioning; Terraform returns once the Service exists. ELB is created async by AWS.
      # Run apply again later (or terraform refresh) to get app_url once the load balancer has an ingress.
      wait_for_load_balancer = false
      timeouts {
        create = "2m"
      }
    }

    output "app_url" {
      # Use try() so output does not fail when load balancer ingress is not yet populated (e.g. at import time).
      value = try(
        "http://${kubernetes_service.app.status[0].load_balancer[0].ingress[0].hostname}",
        "(load balancer pending)"
      )
    }
  }
}
