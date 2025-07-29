terraform {
  backend "s3" {
    bucket         = "divi123backend"
    key            = "global/s3/terraform.tfstate"
    region         = "us-east-1"
    encrypt        =  true
    dynamodb_table = "terraform-state-locking"
  }
}