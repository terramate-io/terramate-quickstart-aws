script "terraform" "preview" {
  name        = "Terraform Deployment Preview"
  description = "Create a preview of Terraform Changes and synchronize it to Terramate Cloud."

  job {
    name        = "Terraform Plan"
    description = "Initialize, validate, and plan Terraform changes."
    commands = [
      ["terraform", "init", "-lock-timeout=5m"],
      ["terraform", "validate"],
      ["terraform", "plan", "-out", "preview.tfplan", "-detailed-exitcode", "-lock=false", {
        cloud_sync_preview             = true
        cloud_sync_terraform_plan_file = "preview.tfplan"
      }],
    ]
  }
}
