resource "aws_s3_bucket" "bucket" {
  bucket = "terramate-awesome-demo"
  acl    = "private"
}
