// Define the S3 bucket resource
resource "aws_s3_bucket" "bucket" {
  bucket = "terraform-demo-bucket-one"
  acl    = "private"
}
