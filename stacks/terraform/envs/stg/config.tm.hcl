globals "terraform" {
  env = "stg"
}

globals "vpc" {
  cidr            = "10.0.0.0/16"
  azs             = ["us-east-1a", "us-east-1b"]
  private_subnets = ["10.0.0.0/22", "10.0.4.0/22"]
  public_subnets  = ["10.0.8.0/22", "10.0.12.0/22"]
}
