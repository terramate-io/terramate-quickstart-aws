# main.tf

# Create a new S3 bucket
resource "aws_s3_bucket" "demo_bucket" {
  bucket = "terramate-terraform-demo-bucket"
  acl    = "private"
}
