resource "aws_s3_bucket" "my_bucket" {
  bucket = "terramate-thursday-morning-demo"
  acl    = "private"
}
