script "terraform" "deploy" {
  name        = "Terraform Deployment"
  description = "Run a full Terraform deployment cycle and synchronize the result to Terramate Cloud."

  job {
    name        = "Terraform Apply"
    description = "Initialize, validate, plan, and apply Terraform changes."
    commands = [
      ["terraform", "init", "-lock-timeout=5m"],
      ["terraform", "validate"],
      ["terraform", "plan", "-out", "plan.tfplan", "-lock=false"],
      ["terraform", "apply", "-input=false", "-auto-approve", "-lock-timeout=5m", "plan.tfplan", {
        sync_deployment     = true
        terraform_plan_file = "plan.tfplan"
      }],
    ]
  }
}
