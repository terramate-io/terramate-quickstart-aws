script "init" {
  name        = "Terraform Init"
  description = "Downloads the required provider plugins and modules and setting up the backend"

  job {
    commands = [
      ["terraform", "init", "-lock-timeout=5m"],
    ]
  }
}

script "preview" {
  name        = "Terraform Deployment Preview"
  description = "Create a preview of Terraform Changes and synchronize it to Terramate Cloud."

  job {
    commands = [
      ["terraform", "validate"],
      ["terraform", "plan", "-out", "out.tfplan", "-detailed-exitcode", "-lock=false", {
        sync_preview        = true
        terraform_plan_file = "out.tfplan"
      }],
    ]
  }
}

script "deploy" {
  name        = "Terraform Deployment"
  description = "Run a full Terraform deployment cycle and synchronize the result to Terramate Cloud."

  job {
    commands = [
      ["terraform", "validate"],
      ["terraform", "plan", "-out", "out.tfplan", "-lock=false"],
      ["terraform", "apply", "-input=false", "-auto-approve", "-lock-timeout=5m", "out.tfplan", {
        sync_deployment     = true
        terraform_plan_file = "out.tfplan"
      }],
    ]
  }
}

script "drift" "detect" {
  name        = "Terraform Drift Check"
  description = "Detect drifts in Terraform configuration and synchronize it to Terramate Cloud."

  job {
    commands = [
      ["terraform", "plan", "-out", "out.tfplan", "-detailed-exitcode", "-lock=false", {
        sync_drift_status   = true
        terraform_plan_file = "out.tfplan"
      }],
    ]
  }
}

script "drift" "reconcile" {
  name        = "Terraform Drift Reconciliation"
  description = "Reconciles drifts in all changed stacks."

  job {
    commands = [
      ["terraform", "plan", "-out", "drift.tfplan", "-detailed-exitcode", "-lock=false", {
        sync_drift_status   = true
        terraform_plan_file = "drift.tfplan"
      }],
    ]
  }
}

script "terraform" "render" {
  name        = "Terraform Show Plan"
  description = "Renders a Terraform Plan."

  job {
    commands = [
      ["echo", "Stack: `${terramate.stack.path.absolute}`"],
      ["echo", "```terraform"],
      ["terraform", "show", "-no-color", "out.tfplan"],
      ["echo", "```"],
    ]
  }
}

script "safe-guard" {
  job {
    command = ["true"]
  }
}
