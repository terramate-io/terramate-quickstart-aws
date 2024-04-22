// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

resource "null_resource" "initial_deployment_trigger" {
}
data "aws_vpc" "vpc" {
  depends_on = [
    null_resource.initial_deployment_trigger,
  ]
  tags = {
    Environment = "prd"
    Terraform   = "true"
  }
}
data "aws_subnets" "subnets" {
  tags = {
    Tier = "public"
  }
  filter {
    name = "vpc-id"
    values = [
      data.aws_vpc.vpc.id,
    ]
  }
}
module "alb" {
  enable_deletion_protection = false
  listeners = {
    ex_http = {
      port     = 80
      protocol = "HTTP"
      forward = {
        target_group_key = "ex_ecs"
      }
    }
  }
  load_balancer_type = "application"
  name               = "production-alb"
  security_group_egress_rules = {
    all = {
      ip_protocol = "-1"
      cidr_ipv4   = "10.0.0.0/16"
    }
  }
  security_group_ingress_rules = {
    all_http = {
      from_port   = 80
      to_port     = 80
      ip_protocol = "tcp"
      cidr_ipv4   = "0.0.0.0/0"
    }
  }
  source  = "terraform-aws-modules/alb/aws"
  subnets = data.aws_subnets.subnets.ids
  tags = {
    Environment = "prd"
    Terraform   = "true"
  }
  target_groups = {
    ex_ecs = {
      backend_protocol                  = "HTTP"
      backend_port                      = 80
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
      create_attachment = false
    }
  }
  version = "9.9.0"
  vpc_id  = data.aws_vpc.vpc.id
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
