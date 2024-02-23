resource "aws_s3_bucket" "private_bucket" {
  bucket = "terramate-some-random-state-bucket"
  acl    = "private"
}
