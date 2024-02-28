generate_hcl "_main.tf" {
  content {
    module "oidc_github" {
      source  = "unfunco/oidc-github/aws"
      version = "1.7.1"

      github_repositories = global.aws.oidc.github_repositories
      attach_admin_policy = true
    }
  }
}
