resource "aws_s3_bucket" "terramate-demo" {
  bucket = "terramate-demo"
  acl    = "private"
}

