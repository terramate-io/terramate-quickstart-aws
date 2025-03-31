// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

resource "kubernetes_deployment" "app2" {
  metadata {
    name      = "app2-stg"
    namespace = "app-stg"
  }
  spec {
    replicas = 1
    selector {
      match_labels = {
        app = "app2-stg"
      }
    }
    template {
      metadata {
        labels = {
          app = "app2-stg"
        }
      }
      spec {
        container {
          image = "gcr.io/kubernetes-e2e-test-images/echoserver:latest"
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
}
