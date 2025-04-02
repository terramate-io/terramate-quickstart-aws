script "safe-guard" {
  name        = "Validate Stack Location"
  description = "Ensure stacks are in correct location"

  job {
    command = ["echo", <<-EOF
        > [!IMPORTANT]
        > The stack `${terramate.stack.path.relative}` needs to be in `/stacks/terraform` or `/stacks/opentofu` subdirectory to be executed.
      EOF
    ]
  }
}

# script "promote" {
#   name        = "Promote script warning"
#   description = "Print warning when running the promote script outside of the staging stacks"

#   job {
#     command = ["echo", <<-EOF
#         [WARNING] The `Promote` script can only be executed in the staging stacks under `stacks/terraform/envs/stg`.
#       EOF
#     ]
#   }
# }
