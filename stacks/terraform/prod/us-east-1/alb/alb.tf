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
      forward = {
        target_group_key = "ex_ecs"
      }
      port     = 80
      protocol = "HTTP"
    }
  }
  load_balancer_type = "application"
  name               = "production-alb"
  security_group_egress_rules = {
    all = {
      cidr_ipv4   = "10.0.0.0/16"
      ip_protocol = "-1"
    }
  }
  security_group_ingress_rules = {
    all_http = {
      cidr_ipv4   = "0.0.0.0/0"
      from_port   = 80
      ip_protocol = "tcp"
      to_port     = 80
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
      backend_port         = 80
      backend_protocol     = "HTTP"
      create_attachment    = false
      deregistration_delay = 5
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
      load_balancing_cross_zone_enabled = true
      target_type                       = "ip"
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
