script "terraform" "deploy" {
  name        = "Terraform Deployment"
  description = "Run a full Terraform deployment cycle and synchronize the result to Terramate Cloud."

  job {
    # name        = "Terraform Apply"
    # description = "Initialize, validate, plan, and apply Terraform changes."
    commands = [
      ["terraform", "init", "-lock-timeout=5m"],
      ["terraform", "validate"],
      ["terraform", "plan", "-out", "out.tfplan", "-lock=false"],
      ["terraform", "apply", "-input=false", "-auto-approve", "-lock-timeout=5m", "out.tfplan", {
        cloud_sync_deployment          = true
        cloud_sync_terraform_plan_file = "out.tfplan"
      }],
    ]
  }
}

script "terraform" "detect-drift" {
  name        = "Terraform Drift Check"
  description = "Detect drifts in Terraform configuration and synchronize it to Terramate Cloud."

  job {
    # name        = "Terraform Plan"
    # description = "Initialize, validate, and plan Terraform changes."
    commands = [
      ["terraform", "init", "-lock-timeout=5m"],
      ["terraform", "plan", "-out", "out.tfplan", "-detailed-exitcode", "-lock=false", {
        cloud_sync_drift_status        = true
        cloud_sync_terraform_plan_file = "out.tfplan"
      }],
    ]
  }
}

script "terraform" "preview" {
  name        = "Terraform Deployment Preview"
  description = "Create a preview of Terraform Changes and synchronize it to Terramate Cloud."

  job {
    # name        = "Terraform Plan"
    # description = "Initialize, validate, and plan Terraform changes."
    commands = [
      ["terraform", "init", "-lock-timeout=5m"],
      ["terraform", "validate"],
      ["terraform", "plan", "-out", "out.tfplan", "-detailed-exitcode", "-lock=false", {
        cloud_sync_preview             = true
        cloud_sync_terraform_plan_file = "out.tfplan"
      }],
    ]
  }
}
