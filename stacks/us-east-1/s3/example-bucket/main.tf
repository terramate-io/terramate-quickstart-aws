resource "aws_s3_bucket" "example_bucket" {
  bucket = "thinkport-example"
  acl    = "private"
}
