// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

module "eks" {
  cluster_compute_config = {
    enabled = true
    node_pools = [
      "general-purpose",
    ]
  }
  cluster_endpoint_public_access           = true
  cluster_name                             = "cluster-prd"
  cluster_version                          = "1.32"
  enable_cluster_creator_admin_permissions = true
  source                                   = "terraform-aws-modules/eks/aws"
  subnet_ids                               = local.subnet_ids
  tags = {
    Environment = "prd"
  }
  version = "20.35.0"
  vpc_id  = local.vpc_id
}
