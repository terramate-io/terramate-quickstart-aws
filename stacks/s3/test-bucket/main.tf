resource "aws_s3_bucket" "bucket" {
  bucket = "awesome-terramate-demo"
  acl    = "private"
}
