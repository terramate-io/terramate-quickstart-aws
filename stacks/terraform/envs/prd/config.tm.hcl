globals "terraform" {
  env = "prd"
}

globals "vpc" {
  vpc_name        = "vpc-${global.terraform.env}"
  cidr            = "10.1.0.0/16"
  azs             = ["us-east-1a", "us-east-1b"]
  private_subnets = ["10.1.0.0/22", "10.1.4.0/22"]
  public_subnets  = ["10.1.8.0/22", "10.1.12.0/22"]
}

globals "eks" {
  vpc_name                       = "vpc-${global.terraform.env}"
  cluster_name                   = "cluster-${global.terraform.env}"
  cluster_version                = "1.32"
  namespace                      = "app-${global.terraform.env}"
  cluster_endpoint_public_access = true
}
