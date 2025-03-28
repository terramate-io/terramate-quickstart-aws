// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

resource "null_resource" "initial_trigger" {
}
data "aws_vpc" "vpc" {
  depends_on = [
    null_resource.initial_trigger,
  ]
  filter {
    name = "tag:Name"
    values = [
      "vpc-prd",
    ]
  }
}
data "aws_subnets" "subnets" {
  filter {
    name = "vpc-id"
    values = [
      data.aws_vpc.vpc.id,
    ]
  }
}
