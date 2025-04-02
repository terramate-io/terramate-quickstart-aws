stack {
  name        = "hello-app-stg"
  description = <<EOF
    Simple Google Hello app
    - Kubernetes deployment
    - Exposed as a LoadBalancer service
    - Application URL available as an output
  EOF
  id          = "689c676b-8e9b-47c7-aa25-9fd8794468e6"
  tags        = ["kubernetes"]
}
