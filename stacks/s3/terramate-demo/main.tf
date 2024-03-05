resource "aws_s3_bucket" "my_bucket" {
  bucket = "terramate-s3-demo-bucket"
  acl    = "private"
}
