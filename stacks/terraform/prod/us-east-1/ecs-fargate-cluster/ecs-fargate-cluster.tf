// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

module "ecs_cluster" {
  cluster_name = "prd-ecs-clusters2"
  fargate_capacity_providers = {
    FARGATE = {
      default_capacity_provider_strategy = {
        base   = 20
        weight = 50
      }
    }
    FARGATE_SPOT = {
      default_capacity_provider_strategy = {
        weight = 50
      }
    }
  }
  source = "terraform-aws-modules/ecs/aws//modules/cluster"
  tags = {
    Environment = "prd"
    Terraform   = "true"
  }
  version = "5.11.1"
}
