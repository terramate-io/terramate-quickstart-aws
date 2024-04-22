generate_hcl "main.tf" {
  inherit = false

  lets {
    container_port = 80
  }

  content {
    resource "null_resource" "initial_deployment_trigger" {}

    data "aws_ecs_cluster" "ecs_cluster" {
      cluster_name = global.ecs.cluster_name

      depends_on = [
        null_resource.initial_deployment_trigger
      ]
    }

    data "aws_vpc" "vpc" {
      tags = global.tags

      depends_on = [
        null_resource.initial_deployment_trigger
      ]
    }

    data "aws_subnets" "subnets" {
      filter {
        name   = "vpc-id"
        values = [data.aws_vpc.vpc.id]
      }

      tags = {
        Tier = "private"
      }
    }

    data "aws_lb_target_group" "target_group" {
      name = "tf-20240422214757001900000002"

      depends_on = [
        null_resource.initial_deployment_trigger
      ]
    }

    data "aws_security_group" "security_group" {
      id = "sg-0c8333576937a6733"

      depends_on = [
        null_resource.initial_deployment_trigger
      ]
    }

    module "ecs_service" {
      source  = "terraform-aws-modules/ecs/aws//modules/service"
      version = global.terraform.module.version.ecs_service

      name        = terramate.stack.path.basename
      cluster_arn = data.aws_ecs_cluster.ecs_cluster.arn

      #   cpu    = 1024
      #   memory = 4096

      # Container definition(s)
      container_definitions = {
        ("nginx") = {
          cpu       = 256
          memory    = 512
          essential = true
          image     = "public.ecr.aws/nginx/nginx:1.25-bookworm"
          port_mappings = [
            {
              name          = "nginx"
              containerPort = let.container_port
              hostPort      = let.container_port
              protocol      = "tcp"
            }
          ]
          readonly_root_filesystem = false
        }
      }

      load_balancer = {
        service = {
          target_group_arn = data.aws_lb_target_group.target_group.arn
          container_name   = "nginx"
          container_port   = let.container_port
        }
      }

      subnet_ids = data.aws_subnets.subnets.ids
      security_group_rules = {
        alb_ingress_3000 = {
          type                     = "ingress"
          from_port                = let.container_port
          to_port                  = let.container_port
          protocol                 = "tcp"
          description              = "Service port"
          source_security_group_id = data.aws_security_group.security_group.id
        }
        egress_all = {
          type        = "egress"
          from_port   = 0
          to_port     = 0
          protocol    = "-1"
          cidr_blocks = ["0.0.0.0/0"]
        }
      }

      tags = tm_try(global.tags, {})
    }
  }
}
