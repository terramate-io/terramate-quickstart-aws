resource "aws_s3_bucket" "demo_bucket" {
  bucket = "just-another-new-terramate-demo-bucket"
  acl    = "private"
}

