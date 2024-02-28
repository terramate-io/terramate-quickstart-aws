resource "aws_s3_bucket" "ninetailed-demo" {
  bucket = "ninetailed-demo"
  acl    = "private"
}
