stack {
  name        = "echoserver-app-stg"
  description = <<EOF
    Echo Server App
    - Kubernetes deployment
    - Exposed as a LoadBalancer service
    - Application URL available as an output
  EOF
  id          = "48c67f9a-f7d7-4d81-9815-90991878b397"
  tags        = ["kubernetes"]
}
