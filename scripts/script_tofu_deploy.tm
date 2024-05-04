script "tofu" "deploy" {
  name        = "OpenTofu Deployment"
  description = "Run a full OpenTofu deployment cycle and synchronize the result to Terramate Cloud."

  job {
    name        = "OpenTofu Apply"
    description = "Initialize, validate, plan, and apply OpenTofu changes."
    commands = [
      ["tofu", "init", "-lock-timeout=5m"],
      ["tofu", "validate"],
      ["tofu", "plan", "-out", "plan.tfplan", "-lock=false"],
      ["tofu", "apply", "-input=false", "-auto-approve", "-lock-timeout=5m", "plan.tfplan", {
        sync_deployment = true
        tofu_plan_file  = "plan.tfplan"
      }],
    ]
  }
}
