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

script "promote" {
  name = "Promote staging to production"
  job {
    command = ["true"] ## TODO
    ## this runs from staging only and always promotes to prod
  }
}
