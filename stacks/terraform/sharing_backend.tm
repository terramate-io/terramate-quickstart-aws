sharing_backend "terraform" {
  type     = terraform
  command  = ["terraform", "output", "-json"]
  filename = "sharing.tf"
}
