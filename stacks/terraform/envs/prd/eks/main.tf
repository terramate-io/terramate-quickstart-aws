// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

module "eks" {
  cluster_endpoint_public_access = true
  cluster_name                   = "cluster-prd"
  cluster_version                = "1.32"
  source                         = "terraform-aws-modules/eks/aws"
  subnet_ids                     = local.subnet_ids
  tags = {
    Environment = "prd"
  }
  version = "20.34.0"
  vpc_id  = local.vpc_id
}
