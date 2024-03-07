resource "aws_s3_bucket" "terramate_awesome_demo" {
  bucket = "terramate-awesome-demo"
  acl    = "private"
}
