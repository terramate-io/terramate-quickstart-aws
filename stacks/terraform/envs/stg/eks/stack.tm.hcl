stack {
  name        = "eks-cluster-stg"
  description = "Staging EKS Cluster"
  id          = "db0aac90-33e0-48e2-a5b1-5b680b8b2749"
  after = [
    "tag:vpc"
  ]
}
