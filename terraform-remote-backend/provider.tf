terraform {
  
  backend "s3" {
    bucket = "bucket-test-remote123"
    key = "terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "my-dynamodb-table"
  }
}