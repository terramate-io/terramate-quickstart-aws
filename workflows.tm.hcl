script "terraform" "init" {
  name        = "Terraform Init"
  description = "Downloads the required provider plugins and modules and setting up the backend"

  job {
    commands = [
      ["terraform", "init", "-lock-timeout=5m"],
    ]
  }
}

script "terraform" "preview" {
  name        = "Terraform Deployment Preview"
  description = "Create a preview of Terraform Changes and synchronize it to Terramate Cloud."

  job {
    commands = [
      ["terraform", "validate"],
      ["terraform", "plan", "-out", "out.tfplan", "-detailed-exitcode", "-lock=false", {
        cloud_sync_preview             = true
        cloud_sync_terraform_plan_file = "out.tfplan"
      }],
    ]
  }
}

script "terraform" "deploy" {
  name        = "Terraform Deployment"
  description = "Run a full Terraform deployment cycle and synchronize the result to Terramate Cloud."

  job {
    commands = [
      ["terraform", "validate"],
      ["terraform", "plan", "-out", "out.tfplan", "-lock=false"],
      ["terraform", "apply", "-input=false", "-auto-approve", "-lock-timeout=5m", "out.tfplan", {
        cloud_sync_deployment          = true
        cloud_sync_terraform_plan_file = "out.tfplan"
      }],
    ]
  }
}

script "terraform" "drift" "detect" {
  name        = "Terraform Drift Check"
  description = "Detect drifts in Terraform configuration and synchronize it to Terramate Cloud."

  job {
    commands = [
      ["terraform", "plan", "-out", "out.tfplan", "-detailed-exitcode", "-lock=false", {
        cloud_sync_drift_status        = true
        cloud_sync_terraform_plan_file = "out.tfplan"
      }],
    ]
  }
}

script "terraform" "drift" "reconcile" {
  name        = "Terraform Drift Reconciliation"
  description = "Reconciles drifts in all changed stacks."

  job {
    commands = [
      ["terraform", "plan", "-out", "drift.tfplan", "-detailed-exitcode", "-lock=false", {
        cloud_sync_drift_status        = true
        cloud_sync_terraform_plan_file = "drift.tfplan"
      }],
    ]
  }
}
