script "terraform" "init" {
  description = "Run terraform init with lock timeout"
  job {
    commands = [
      ["terraform", "init", "-lock-timeout=5m"],
    ]
  }
}

script "terraform" "plan" {
  description = "Run terraform plan with lock timeout and output to a plan file"
  job {
    commands = [
      ["terraform", "plan", "-lock-timeout=5m", "-out", "out.tfplan"],
    ]
  }
}

script "terraform" "deploy" {
  description = "Run a Terraform deployment"
  job {
    commands = [
      [
        "terraform",
        "apply",
        "-input=false",
        "-auto-approve",
        "-lock-timeout=5m",
        "out.tfplan",
        # {
        #   cloud_sync_deplpyment : true
        # }
      ],
    ]
  }
  # TODO: add later when cloud sync drift is available
  #   job {
  #     commands = [
  #       [
  #         "terraform",
  #         "plan",
  #         "-out",
  #         "drift.tfplan",
  #         "-detailed-exitcode",
  #         {
  #           cloud_sync_drift_status: true,
  #           cloud_sync_terraform_plan_file: "drift.tfplan" 
  #         }
  #       ],
  #     ]
  #   }
}
