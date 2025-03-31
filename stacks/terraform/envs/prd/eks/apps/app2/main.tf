// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

resource "kubernetes_deployment" "app2" {
  metadata {
    name      = "app2-prd"
    namespace = "app-prd"
  }
  spec {
    replicas = 1
    selector {
      match_labels = {
        app = "app2-prd"
      }
    }
    template {
      metadata {
        labels = {
          app = "app2-prd"
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
}
resource "kubernetes_service" "app2" {
  metadata {
    name      = "app2-prd"
    namespace = "app-prd"
  }
  spec {
    selector = {
      app = "app2-prd"
    }
    type = "NodePort"
    port {
      port        = 8080
      protocol    = "TCP"
      target_port = 8080
    }
  }
}
