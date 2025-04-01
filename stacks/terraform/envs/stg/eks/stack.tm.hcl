stack {
  name        = "eks-cluster-stg"
  description = <<EOF
    Staging EKS Cluster
    - Cluster in auto-mode
    - VPC ID pulled as data source 
    - Node pool with auto-scaling
  EOF
  id          = "db0aac90-33e0-48e2-a5b1-5b680b8b2749"
  after = [
    "tag:vpc"
  ]
}
