globals "terraform" "module" "version" {
  vpc = "5.7.1"
}

globals "vpc" {
  name = "prd-vpc"
  cidr = "10.0.0.0/16"
  azs  = ["us-east-1a", "us-east-1b", "us-east-1c"]
}

globals {
  tags = {
    Environment = "prd"
    Terraform   = "true"
  }
}
