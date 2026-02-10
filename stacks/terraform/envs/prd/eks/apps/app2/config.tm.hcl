globals "app" {
  image          = "gcr.io/kubernetes-e2e-test-images/echoserver:2.2"
  container_name = "echoserver"
  container_port = 8080
}
