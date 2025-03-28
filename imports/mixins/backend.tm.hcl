generate_hcl "backend.tf" {
  # condition = !tm_contains(terramate.stack.tags, "no-backend")

  content {
    terraform {
      backend "s3" {
        region       = global.terraform.backend.region
        bucket       = global.terraform.backend.bucket
        key          = tm_try(global.terraform.backend.key, "terraform/stacks/by-id/${terramate.stack.id}/terraform.tfstate")
        encrypt      = true
        use_lockfile = true
      }
    }
  }
}
