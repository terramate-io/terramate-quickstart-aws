stack {
  name        = "eks-cluster-prd"
  description = <<EOF
    Production EKS Cluster
    - Cluster in auto-mode
    - VPC ID pulled as data source 
    - Node pool with auto-scaling
  EOF
  id          = "9ca87b75-eb50-4f8a-9530-221fc607f235"
  after = [
    "tag:vpc"
  ]
}
