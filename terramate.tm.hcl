terramate {
  config {
    run {
      check_gen_code = false
    }
    git {
      check_remote      = false
      check_untracked   = false
      check_uncommitted = false
    }
  }
}
