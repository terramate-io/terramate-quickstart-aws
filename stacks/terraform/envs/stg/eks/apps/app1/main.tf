// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

resource "kubernetes_deployment" "app1" {
  metadata {
    name      = "app1-stg"
    namespace = "app-stg"
  }
  spec {
    replicas = 1
    selector {
      match_labels = {
        app = "app1-stg"
      }
    }
    template {
      metadata {
        labels = {
          app = "app1-stg"
        }
      }
      spec {
        container {
          image = "gcr.io/cloudrun/hello:latest"
          name  = "hello"
          port {
            container_port = 8080
          }
          security_context {
            read_only_root_filesystem = true
            run_as_non_root           = true
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
}
resource "kubernetes_service" "app1" {
  metadata {
    name      = "app1-stg"
    namespace = "app-stg"
  }
  spec {
    selector = {
      app = "app1-stg"
    }
    type = "LoadBalancer"
    port {
      port        = 8080
      protocol    = "TCP"
      target_port = 8080
    }
  }
}
