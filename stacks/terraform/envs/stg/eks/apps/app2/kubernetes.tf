// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

resource "null_resource" "initial_trigger" {
}
data "aws_eks_cluster" "cluster" {
  depends_on = [
    null_resource.initial_trigger,
  ]
  name = "cluster-stg"
}
data "aws_eks_cluster_auth" "cluster_auth" {
  depends_on = [
    null_resource.initial_trigger,
  ]
  name = "cluster-stg"
}
provider "kubernetes" {
  cluster_ca_certificate = base64decode(data.aws_eks_cluster.cluster.certificate_authority[0].data)
  host                   = data.aws_eks_cluster.cluster.endpoint
  token                  = data.aws_eks_cluster_auth.cluster_auth.token
}
