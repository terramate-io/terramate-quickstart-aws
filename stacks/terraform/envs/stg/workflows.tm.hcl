script "promote" {
  name        = "Promote Staging to Production"
  description = "Promote Terraform changes from staging to production stacks"

  lets {
    relative_path = tm_trimprefix(terramate.stack.path.relative, "stacks/terraform/envs/stg/")
    path_prd      = "${terramate.stack.path.to_root}/stacks/terraform/envs/prd/${let.relative_path}"
  }

  job {
    commands = [
      ["terramate", "create", "--ignore-existing", "${let.path_prd}"],
      ["rsync", "-av", "--exclude", "stack.tm.hcl", "--exclude", "config.tm.hcl", "--delete", "./", "${let.path_prd}/"],
      ["terramate", "generate", "-C", "${let.path_prd}"]
    ]
  }
}
