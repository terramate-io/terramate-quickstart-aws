generate_hcl "kubernetes.tf" {
  condition = tm_contains(terramate.stack.tags, "kubernetes")

  content {
    data "aws_eks_cluster" "cluster" {
      name = global.eks.cluster_name
    }

    data "aws_eks_cluster_auth" "cluster_auth" {
      name = global.eks.cluster_name
    }

    provider "kubernetes" {
      host                   = data.aws_eks_cluster.cluster.endpoint
      cluster_ca_certificate = base64decode(data.aws_eks_cluster.cluster.certificate_authority[0].data)
      token                  = data.aws_eks_cluster_auth.cluster_auth.token
    }
  }
}
