stack {
  name        = "echoserver-app-stg"
  description = <<EOF
    Echo Server App
    - Kubernetes deployment
    - Exposed as a LoadBalancer service
    - Application URL available as an output
  EOF
  id          = "4f31387f-16d0-46b6-ba11-b048ae3676b0"
  tags        = ["kubernetes"]
}
