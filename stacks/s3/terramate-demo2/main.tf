resource "aws_s3_bucket" "my_bucket" {
  bucket = "another-terramate-s3-demo-bucket"
  acl    = "private"
}

