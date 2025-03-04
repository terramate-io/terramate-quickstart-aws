globals "terraform" "backend" {
  key = "opentofu/stacks/by-id/${terramate.stack.id}/opentofu.tfstate"
}

globals "terraform" {
  version = "1.9.0"
}
