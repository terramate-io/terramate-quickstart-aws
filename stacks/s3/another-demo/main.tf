resource "aws_s3_bucket" "bucket" {
  bucket = "another-awesome-terramate-demo"
  acl    = "private"
}
