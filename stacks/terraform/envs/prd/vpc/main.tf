// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

module "vpc" {
  azs = [
    "us-east-1a",
    "us-east-1b",
  ]
  cidr               = "10.1.0.0/16"
  enable_nat_gateway = true
  name               = "vpc-prd"
  private_subnets = [
    "10.1.0.0/22",
    "10.1.4.0/22",
  ]
  public_subnets = [
    "10.1.8.0/22",
    "10.1.12.0/22",
  ]
  source = "terraform-aws-modules/vpc/aws"
  tags = {
    Environment = "prd"
    Name        = "vpc-prd"
  }
  version = "5.19.0"
}
