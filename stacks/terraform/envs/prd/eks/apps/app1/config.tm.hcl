globals "app" {
  image          = "gcr.io/cloudrun/hello:latest"
  container_name = "hello"
  container_port = 8080
}
