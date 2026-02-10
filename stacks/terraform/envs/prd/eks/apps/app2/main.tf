// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

locals {
  app_name = "app2-prd"
}
resource "kubernetes_deployment" "app" {
  metadata {
    name      = local.app_name
    namespace = "app-prd"
  }
  spec {
    replicas = 1
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
          image = "gcr.io/kubernetes-e2e-test-images/echoserver:2.2"
          name  = "echoserver"
          port {
            container_port = 8080
          }
          resources {
            limits = {
              cpu    = "50m"
              memory = "100Mi"
            }
            requests = {
              cpu    = "50m"
              memory = "100Mi"
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
  wait_for_load_balancer = false
  metadata {
    name      = local.app_name
    namespace = "app-prd"
  }
  spec {
    selector = {
      app = local.app_name
    }
    type = "LoadBalancer"
    port {
      port        = 80
      protocol    = "TCP"
      target_port = 8080
    }
  }
  timeouts {
    create = "2m"
  }
}
output "app_url" {
  value = try("http://${kubernetes_service.app.status[0].load_balancer[0].ingress[0].hostname}", "(load balancer pending)")
}
