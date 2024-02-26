resource "aws_s3_bucket" "s3_bucket" {
  bucket = "terramate-s3-test"
  acl    = "private"
}
