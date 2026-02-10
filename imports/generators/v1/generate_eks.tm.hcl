generate_hcl "main.tf" {
  condition = global.generators.version == "v1"

  stack_filter {
    project_paths = ["**/stacks/terraform/envs/*/eks"]
  }

  content {
    module "eks" {
      source  = "terraform-aws-modules/eks/aws"
      version = "21.15.1"

      name               = global.eks.cluster_name
      kubernetes_version = global.eks.cluster_version

      endpoint_public_access = global.eks.cluster_endpoint_public_access

      vpc_id     = local.vpc_id
      subnet_ids = local.subnet_ids

      compute_config = {
        enabled    = true
        node_pools = ["general-purpose"]
      }

      tags = {
        Environment = global.terraform.env
      }

      enable_cluster_creator_admin_permissions = true
    }
  }
}

generate_hcl "data.tf" {
  condition = global.generators.version == "v1"

  stack_filter {
    project_paths = ["**/stacks/terraform/envs/*/eks"]
  }

  content {
    resource "null_resource" "initial_trigger" {}

    data "aws_vpc" "vpc" {
      filter {
        name   = "tag:Name"
        values = [global.vpc.vpc_name]
      }
      depends_on = [null_resource.initial_trigger]
    }

    data "aws_subnets" "subnets" {
      filter {
        name   = "vpc-id"
        values = [data.aws_vpc.vpc.id]
      }
    }

    locals {
      vpc_id     = data.aws_vpc.vpc.id
      subnet_ids = data.aws_subnets.subnets.ids
    }
  }
}
