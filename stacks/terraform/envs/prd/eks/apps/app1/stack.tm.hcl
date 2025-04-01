stack {
  name        = "hello-app-prd"
  description = <<EOF
    Simple Google Hello app
    - Kubernetes deployment
    - Exposed as a LoadBalancer service
    - Application URL available as an output
  EOF
  id          = "f0e291a3-d4e4-4537-b724-ac5f294ad41c"
  tags        = ["kubernetes"]
}
