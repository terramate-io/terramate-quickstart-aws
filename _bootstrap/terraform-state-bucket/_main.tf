// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

resource "aws_kms_key" "state-bucket-key" {
  deletion_window_in_days = 10
  description             = "This key is used to encrypt bucket objects"
}
resource "aws_s3_bucket" "state-bucket" {
  bucket              = "terramate-example-terraform-state-backend"
  object_lock_enabled = true
  tags = {
    Name = "S3 Remote Terraform State Store"
  }
}
resource "aws_s3_bucket_versioning" "state-bucket" {
  bucket = aws_s3_bucket.state-bucket.bucket
  versioning_configuration {
    status = "Enabled"
  }
}
resource "aws_s3_bucket_server_side_encryption_configuration" "state-bucket" {
  bucket = aws_s3_bucket.state-bucket.id
  rule {
    apply_server_side_encryption_by_default {
      kms_master_key_id = aws_kms_key.state-bucket-key.arn
      sse_algorithm     = "aws:kms"
    }
  }
}
resource "aws_dynamodb_table" "terraform-lock" {
  hash_key      = "LockID"
  name          = "terraform-lock"
  read_capacity = 5
  tags = {
    Name = "DynamoDB Terraform State Lock Table"
  }
  write_capacity = 5
  attribute {
    name = "LockID"
    type = "S"
  }
}
