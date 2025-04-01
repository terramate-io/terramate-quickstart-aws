// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

data "aws_eks_cluster" "cluster" {
  name = "cluster-stg2"
}
data "aws_eks_cluster_auth" "cluster_auth" {
  name = "cluster-stg2"
}
provider "kubernetes" {
  cluster_ca_certificate = base64decode(data.aws_eks_cluster.cluster.certificate_authority[0].data)
  host                   = data.aws_eks_cluster.cluster.endpoint
  token                  = data.aws_eks_cluster_auth.cluster_auth.token
}
