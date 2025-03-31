globals "terraform" {
  env = "prd"
}

globals "vpc" {
  cidr            = "10.1.0.0/16"
  azs             = ["us-east-1a", "us-east-1b"]
  private_subnets = ["10.1.0.0/22", "10.1.4.0/22"]
  public_subnets  = ["10.1.8.0/22", "10.1.12.0/22"]
}
