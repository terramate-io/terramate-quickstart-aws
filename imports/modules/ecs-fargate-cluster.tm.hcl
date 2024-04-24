generate_hcl "ecs-fargate-cluster.tf" {
  inherit = false

  content {
    module "ecs_cluster" {
      source  = "terraform-aws-modules/ecs/aws//modules/cluster"
      version = global.terraform.module.version.ecs_cluster

      cluster_name = global.ecs.cluster_name

      # Capacity provider
      fargate_capacity_providers = tm_try(global.ecs_fargate.fargate_capacity_providers, {
        FARGATE = {
          default_capacity_provider_strategy = {
            weight = 50
            base   = 20
          }
        }
        FARGATE_SPOT = {
          default_capacity_provider_strategy = {
            weight = 50
          }
        }
      })

      tags = tm_try(global.tags, {})
    }
  }
}
