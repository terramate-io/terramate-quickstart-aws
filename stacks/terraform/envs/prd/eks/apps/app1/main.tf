// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

resource "kubernetes_deployment" "app1" {
  metadata {
    name      = "app1-prd"
    namespace = "app-prd"
  }
  spec {
    replicas = 1
    selector {
      match_labels = {
        app = "app1-prd"
      }
    }
    template {
      metadata {
        labels = {
          app = "app1-prd"
        }
      }
      spec {
        container {
          image = "gcr.io/cloudrun/hello:latest"
          name  = "hello"
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
resource "kubernetes_service" "app1" {
  metadata {
    name      = "app1-prd"
    namespace = "app-prd"
  }
  spec {
    selector = {
      app = "app1-prd"
    }
    type = "LoadBalancer"
    port {
      port        = 8080
      protocol    = "TCP"
      target_port = 8080
    }
  }
}
