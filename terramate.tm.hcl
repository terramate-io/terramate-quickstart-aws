terramate {
  required_version = ">= 0.9.0"
  # required_version_allow_prereleases = true
  config {

    # Configure the namespace of your Terramate Cloud organization
    cloud {
      organization = "terramate-demo"
    }

    git {
      default_remote = "origin"
      default_branch = "main"

      # Optionally disable git safe guards
      # Learn more: https://terramate.io/docs/cli/orchestration/safeguards
      # check_remote      = false
      # check_untracked   = false
      # check_uncommitted = false
    }

    run {
      env {
        TF_PLUGIN_CACHE_DIR = "${terramate.root.path.fs.absolute}/.tf_plugin_cache_dir"
      }

      # Optionally disable code generation safe guard
      # Learn more: https://terramate.io/docs/cli/orchestration/safeguards
      # check_gen_code = true
    }

    # Enable Terramate Scripts
    experiments = [
      "scripts",
    ]
  }
}
