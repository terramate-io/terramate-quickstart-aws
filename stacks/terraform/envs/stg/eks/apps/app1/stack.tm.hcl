stack {
  name        = "hello-app-stg"
  description = <<EOF
    Simple Google Hello app
    - Kubernetes deployment
    - Exposed as a LoadBalancer service
    - Application URL available as an output
  EOF
  id          = "3a02cc43-c5d0-4327-b1e8-bf5f0ecd526b"
  tags        = ["kubernetes"]
}
