script "init" {
  name        = "OpenTofu Init"
  description = "Download the required provider plugins and modules and set up the backend"

  job {
    commands = [
      ["tofu", "init", "-lock-timeout=5m"],
    ]
  }
}

script "preview" {
  name        = "OpenTofu Deployment Preview"
  description = "Create a preview of OpenTofu changes and synchronize it to Terramate Cloud"

  job {
    commands = [
      ["tofu", "validate"],
      ["tofu", "plan", "-out", "out.tfplan", "-detailed-exitcode", "-lock=false", {
        sync_preview   = true
        tofu_plan_file = "out.tfplan"
      }],
    ]
  }
}

script "deploy" {
  name        = "OpenTofu Deployment"
  description = "Run a full OpenTofu deployment cycle and synchronize the result to Terramate Cloud"

  job {
    commands = [
      ["tofu", "validate"],
      ["tofu", "plan", "-out", "out.tfplan", "-lock=false"],
      ["tofu", "apply", "-input=false", "-auto-approve", "-lock-timeout=5m", "out.tfplan", {
        sync_deployment = true
        tofu_plan_file  = "out.tfplan"
      }],
    ]
  }
}

script "drift" "detect" {
  name        = "OpenTofu Drift Check"
  description = "Detect drifts in OpenTofu configuration and synchronize it to Terramate Cloud"

  job {
    commands = [
      ["tofu", "plan", "-out", "out.tfplan", "-detailed-exitcode", "-lock=false", {
        sync_drift_status = true
        tofu_plan_file    = "out.tfplan"
      }],
    ]
  }
}

script "drift" "reconcile" {
  name        = "OpenTofu Drift Reconciliation"
  description = "Reconcile drifts in all changed stacks"

  job {
    commands = [
      ["tofu", "apply", "-input=false", "-auto-approve", "-lock-timeout=5m", "drift.tfplan", {
        sync_deployment = true
        tofu_plan_file  = "drift.tfplan"
      }],

    ]
  }
}

script "tofu" "render" {
  name        = "OpenTofu Show Plan"
  description = "Render an OpenTofu plan"

  job {
    commands = [
      ["echo", "Stack: `${terramate.stack.path.absolute}`"],
      ["echo", "```terraform"],
      ["tofu", "show", "-no-color", "out.tfplan"],
      ["echo", "```"],
    ]
  }
}


script "safe-guard" {
  job {
    command = ["true"]
  }
}
