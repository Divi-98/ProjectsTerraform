provider "aws" {
    region = "us-east-1"
}
resource "aws_s3_bucket" "S3" {
    bucket="divi123backend"
    versioning {
        enabled = true
    }
}  
resource "aws_dynamodb_table" "terraform_locks" {
name="terraform-state-locking"
billing_mode ="PAY_PER_REQUEST"
hash_key ="LockID"   

attribute {
  name="LockID"
  type = "S"
}
}
