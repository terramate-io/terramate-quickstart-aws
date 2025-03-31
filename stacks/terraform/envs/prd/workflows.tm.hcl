script "promote" {
  name        = "Promote Staging to Production"
  description = "Promote Terraform changes from staging to production stacks"

  lets {
    relative_path = tm_trimprefix(terramate.stack.path.relative, "stacks/terraform/envs/prd/")
    path_stg      = "${terramate.stack.path.to_root}/stacks/terraform/envs/stg/${let.relative_path}"
  }

  job {
    commands = [
      ["echo", "${let.path_stg}"],
      #["terramate", "create", "--ignore-existing", "${let.path_prd}"],
      ["rsync", "-av", "--exclude", "stack.tm.hcl", "--exclude", "config.tm.hcl", "${let.path_stg}/", "./"],
      ["terramate", "generate"]
    ]
  }
}
