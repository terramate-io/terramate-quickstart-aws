// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

module "eks" {
  compute_config = {
    enabled = true
    node_pools = [
      "general-purpose",
    ]
  }
  enable_cluster_creator_admin_permissions = true
  endpoint_public_access                   = true
  kubernetes_version                       = "1.32"
  name                                     = "cluster-prd"
  source                                   = "terraform-aws-modules/eks/aws"
  subnet_ids                               = local.subnet_ids
  tags = {
    Environment = "prd"
  }
  version = "21.15.1"
  vpc_id  = local.vpc_id
}
