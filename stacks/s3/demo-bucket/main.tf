resource "aws_s3_bucket" "demo_bucket" {
  bucket = "terramate-s3-demo"
  acl    = "private"
}
