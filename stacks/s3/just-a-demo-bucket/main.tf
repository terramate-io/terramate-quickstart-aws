resource "aws_s3_bucket" "demo_bucket" {
  bucket = "just-another-terramate-demo-bucket"
  acl    = "private"
}
