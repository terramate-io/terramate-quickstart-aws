resource "aws_s3_bucket" "bucket" {
  bucket = "victorias-secret-test-bucket"
  acl    = "private"
}
