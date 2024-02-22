module "oidc_github" {
  source  = "unfunco/oidc-github/aws"
  version = "1.7.1"

  github_repositories = [
    "terramate-io/terramate-quickstart-aws",
    # "another-org/another-repo:ref:refs/heads/main",
  ]
  attach_admin_policy = true

  #   iam_role_inline_policies = {
  #     "example_inline_policy" : data.aws_iam_policy_document.example.json
  #   }
}
# data "aws_iam_policy_document" "example" {
#   statement {
#     actions   = ["*"]
#     effect    = "Allow"
#     resources = ["*"]
#   }
# }
