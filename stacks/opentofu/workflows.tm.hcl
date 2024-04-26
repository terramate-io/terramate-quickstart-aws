script "tofu" "init" {
  name        = "OpenTofu Init"
  description = "Downloads the required provider plugins and modules and setting up the backend"

  job {
    commands = [
      ["tofu", "init", "-lock-timeout=5m"],
    ]
  }
}

script "tofu" "preview" {
  name        = "OpenTofu Deployment Preview"
  description = "Create a preview of OpenTofu Changes and synchronize it to Terramate Cloud."

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

script "tofu" "deploy" {
  name        = "OpenTofu Deployment"
  description = "Run a full OpenTofu deployment cycle and synchronize the result to Terramate Cloud."

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

script "tofu" "drift" "detect" {
  name        = "OpenTofu Drift Check"
  description = "Detect drifts in OpenTofu configuration and synchronize it to Terramate Cloud."

  job {
    commands = [
      ["tofu", "plan", "-out", "out.tfplan", "-detailed-exitcode", "-lock=false", {
        sync_drift_status = true
        tofu_plan_file    = "out.tfplan"
      }],
    ]
  }
}

script "tofu" "drift" "reconcile" {
  name        = "OpenTofu Drift Reconciliation"
  description = "Reconciles drifts in all changed stacks."

  job {
    commands = [
      ["tofu", "plan", "-out", "drift.tfplan", "-detailed-exitcode", "-lock=false", {
        sync_drift_status = true
        tofu_plan_file    = "drift.tfplan"
      }],
    ]
  }
}
