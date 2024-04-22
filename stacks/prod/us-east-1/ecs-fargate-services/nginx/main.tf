// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

resource "null_resource" "initial_deployment_trigger" {
}
data "aws_ecs_cluster" "ecs_cluster" {
  cluster_name = "prd-ecs-cluster"
  depends_on = [
    null_resource.initial_deployment_trigger,
  ]
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
    Tier = "private"
  }
  filter {
    name = "vpc-id"
    values = [
      data.aws_vpc.vpc.id,
    ]
  }
}
data "aws_lb_target_group" "target_group" {
  depends_on = [
    null_resource.initial_deployment_trigger,
  ]
  name = "tf-20240422214757001900000002"
}
data "aws_security_group" "security_group" {
  depends_on = [
    null_resource.initial_deployment_trigger,
  ]
  id = "sg-0c8333576937a6733"
}
module "ecs_service" {
  cluster_arn = data.aws_ecs_cluster.ecs_cluster.arn
  container_definitions = {
    ("nginx") = {
      cpu       = 256
      memory    = 512
      essential = true
      image     = "public.ecr.aws/nginx/nginx:1.25-bookworm"
      port_mappings = [
        {
          name          = "nginx"
          containerPort = 3000
          hostPort      = 3000
          protocol      = "tcp"
        },
      ]
    }
  }
  load_balancer = {
    service = {
      target_group_arn = data.aws_lb_target_group.target_group.arn
      container_name   = "nginx"
      container_port   = 3000
    }
  }
  name = "nginx"
  security_group_rules = {
    alb_ingress_3000 = {
      type                     = "ingress"
      from_port                = 3000
      to_port                  = 3000
      protocol                 = "tcp"
      description              = "Service port"
      source_security_group_id = data.aws_security_group.security_group.id
    }
    egress_all = {
      type      = "egress"
      from_port = 0
      to_port   = 0
      protocol  = "-1"
      cidr_blocks = [
        "0.0.0.0/0",
      ]
    }
  }
  source     = "terraform-aws-modules/ecs/aws//modules/service"
  subnet_ids = data.aws_subnets.subnets.ids
  tags = {
    Environment = "prd"
    Terraform   = "true"
  }
  version = "5.11.1"
}
