script "terraform" "detect-drift" {
  name        = "Terraform Drift Check"
  description = "Detect drifts in Terraform configuration and synchronize it to Terramate Cloud."

  job {
    name        = "Terraform Plan"
    description = "Initialize, validate, and plan Terraform changes."
    commands = [
      ["terraform", "init", "-lock-timeout=5m"],
      ["terraform", "plan", "-out", "drift.tfplan", "-detailed-exitcode", "-lock=false", {
        cloud_sync_drift_status        = true
        cloud_sync_terraform_plan_file = "drift.tfplan"
      }],
    ]
  }
}
