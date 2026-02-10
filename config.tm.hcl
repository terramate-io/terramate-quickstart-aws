globals "generators" {
  version = "v1"
}

globals "terraform" {
  version = "1.14.4"
}

globals "terraform" "backend" {
  bucket = "terramate-example-terraform-state-backend"
  region = "us-east-1"
}

globals "aws" "oidc" {
  github_repositories = [
    "terramate-io/terramate-quickstart-aws",
    # "another-org/another-repo:ref:refs/heads/main",
  ]
}

globals "terraform" "providers" "aws" {
  enabled = true
  source  = "hashicorp/aws"
  version = "~> 6.0"
  config = {
    region = "us-east-1"
  }
}

globals "terraform" "providers" "kubernetes" {
  enabled = tm_contains(terramate.stack.tags, "kubernetes")
  source  = "hashicorp/kubernetes"
  version = "~> 3.0"
}
