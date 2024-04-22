// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

module "vpc" {
  azs = [
    "us-east-1a",
    "us-east-1b",
    "us-east-1c",
  ]
  cidr               = "10.0.0.0/16"
  enable_nat_gateway = true
  enable_vpn_gateway = true
  name               = "prd-vpc"
  private_subnets = [
    "10.0.1.0/24",
    "10.0.2.0/24",
    "10.0.3.0/24",
  ]
  public_subnets = [
    "10.0.101.0/24",
    "10.0.102.0/24",
    "10.0.103.0/24",
  ]
  source = "terraform-aws-modules/vpc/aws"
  tags = {
    Env = "Prod"
  }
  version = "5.7.1"
}
