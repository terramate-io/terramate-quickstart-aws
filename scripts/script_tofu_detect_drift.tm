script "tofu" "detect-drift" {
  name        = "OpenTofu Drift Check"
  description = "Detect drifts in OpenTofu configuration and synchronize it to Terramate Cloud."

  job {
    name        = "OpenTofu Plan"
    description = "Initialize, validate, and plan OpenTofu changes."
    commands = [
      ["tofu", "init", "-lock-timeout=5m"],
      ["tofu", "plan", "-out", "drift.tfplan", "-detailed-exitcode", "-lock=false", {
        sync_drift_status = true
        tofu_plan_file    = "drift.tfplan"
      }],
    ]
  }
}
