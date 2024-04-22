generate_hcl "main.tf" {
  inherit = false

  content {
    resource "null_resource" "initial_deployment_trigger" {}

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
        Tier = "public"
      }
    }

    module "alb" {
      source  = "terraform-aws-modules/alb/aws"
      version = global.terraform.module.version.alb

      name = global.alb.name

      load_balancer_type = "application"

      vpc_id  = data.aws_vpc.vpc.id
      subnets = data.aws_subnets.subnets.ids

      enable_deletion_protection = false

      # Security Group
      security_group_ingress_rules = {
        all_http = {
          from_port   = 80
          to_port     = 80
          ip_protocol = "tcp"
          cidr_ipv4   = "0.0.0.0/0"
        }
      }
      security_group_egress_rules = {
        all = {
          ip_protocol = "-1"
          cidr_ipv4   = global.vpc.cidr
        }
      }

      listeners = {
        ex_http = {
          port     = 80
          protocol = "HTTP"

          forward = {
            target_group_key = "ex_ecs"
          }
        }
      }

      target_groups = {
        ex_ecs = {
          backend_protocol                  = "HTTP"
          backend_port                      = 3000
          target_type                       = "ip"
          deregistration_delay              = 5
          load_balancing_cross_zone_enabled = true

          health_check = {
            enabled             = true
            healthy_threshold   = 5
            interval            = 30
            matcher             = "200"
            path                = "/"
            port                = "traffic-port"
            protocol            = "HTTP"
            timeout             = 5
            unhealthy_threshold = 2
          }

          # There's nothing to attach here in this definition. Instead,
          # ECS will attach the IPs of the tasks to this target group
          create_attachment = false
        }
      }

      tags = tm_try(global.tags, {})
    }

    output "security_group_arn" {
      value = module.alb.security_group_arn
    }

    output "security_group_id" {
      value = module.alb.security_group_id
    }

    output "target_group" {
      value = module.alb.target_groups.ex_ecs
    }
  }
}
