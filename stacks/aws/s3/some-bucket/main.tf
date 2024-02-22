resource "aws_s3_bucket" "my_bucket" {
  bucket = "some-terramate-example-bucket" // Replace with your desired bucket name
  acl    = "private"                       // Replace with the desired ACL (Access Control List)
}
