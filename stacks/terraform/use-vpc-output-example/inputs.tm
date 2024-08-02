input "vpc_id" {
  backend       = "terraform"
  value         = outputs.vpc_id.value
  mock          = "mocked"
  from_stack_id = "1902bc6d-b192-450c-9d96-dfe4ce16192a"
}
