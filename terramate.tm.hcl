terramate {
  config {
    cloud {
      organization = "terramate-demo"
    }

    git {
      default_remote = "origin"
      default_branch = "main"
    }

    run {
      env {
        TF_PLUGIN_CACHE_DIR = "${terramate.root.path.fs.absolute}/.tf_plugin_cache_dir"
      }
    }
  }
}
