stack {
  name        = "vpc-stg"
  description = <<EOF
    Staging VPC Network
    - 1 VPC
    - 2 private subnets
    - 2 public subnets
  EOF
  id          = "785edb7b-98ce-4139-a875-afcfe11743d2"
  tags        = ["vpc"]
}
