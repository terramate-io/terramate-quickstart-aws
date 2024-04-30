script "tofu" "preview" {
  name        = "OpenTofu Deployment Preview"
  description = "Create a preview of OpenTofu Changes and synchronize it to Terramate Cloud."

  job {
    name        = "OpenTofu Plan"
    description = "Initialize, validate, and plan OpenTofu changes."
    commands = [
      ["tofu", "init", "-lock-timeout=5m"],
      ["tofu", "validate"],
      ["tofu", "plan", "-out", "preview.tfplan", "-detailed-exitcode", "-lock=false", {
        sync_preview   = true
        tofu_plan_file = "preview.tfplan"
      }],
    ]
  }
}
