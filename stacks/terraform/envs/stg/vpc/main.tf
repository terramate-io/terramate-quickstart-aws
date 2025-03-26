// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

module "vpc" {
  azs = [
    "us-east-1a",
    "us-east-1b",
  ]
  cidr               = "10.0.0.0/16"
  enable_nat_gateway = true
  name               = "vpc-stg"
  private_subnets = [
    "10.0.0.0/22",
    "10.0.4.0/22",
  ]
  public_subnets = [
    "10.0.8.0/22",
    "10.0.12.0/22",
  ]
  source = "terraform-aws-modules/vpc/aws"
  tags = {
    Environment = "stg"
    Name        = "vpc-stg"
  }
  version = "5.19.0"
}
