terramate {
  config {
    # cloud {
    #   organization = "terramate-demo"
    # }
    run {
      check_gen_code = true
    }
    git {
      default_remote    = "origin"
      default_branch    = "main"
      check_untracked   = false
      check_uncommitted = false
      check_remote      = false
    }
  }
}
