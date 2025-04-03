stack {
  name        = "hello-app-stg"
  description = <<EOF
    Simple Google Hello app
    - Kubernetes deployment
    - Exposed as a LoadBalancer service
    - Application URL available as an output
  EOF
  id          = "31095951-3d75-4394-bb63-4d5dd65294ad"
  tags        = ["kubernetes"]
}
