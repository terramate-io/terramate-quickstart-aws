
locals {
  name = "secondary-vpc"
  cidr = "10.10.0.0/16"
}

module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = local.name
  cidr = local.cidr

  azs             = ["us-east-1a", "us-east-1b", "us-east-1c"]
  private_subnets = [cidrsubnet(local.cidr, 8, 1), cidrsubnet(local.cidr, 8, 2), cidrsubnet(local.cidr, 8, 3)]
  public_subnets  = [cidrsubnet(local.cidr, 8, 101), cidrsubnet(local.cidr, 8, 102), cidrsubnet(local.cidr, 8, 103)]

  enable_nat_gateway = true
  enable_vpn_gateway = true

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
