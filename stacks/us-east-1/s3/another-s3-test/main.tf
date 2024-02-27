resource "aws_s3_bucket" "private_bucket" {
  bucket = "some-terramate-private-bucket"
  acl    = "private"
}
