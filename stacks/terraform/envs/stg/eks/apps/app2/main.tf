// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

locals {
  app_name = "app2-demo-stg"
}
resource "kubernetes_deployment" "app2" {
  metadata {
    name      = local.app_name
    namespace = "app-stg"
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
resource "kubernetes_service" "app2" {
  metadata {
    name      = local.app_name
    namespace = "app-stg"
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
    create = "3m"
  }
}
