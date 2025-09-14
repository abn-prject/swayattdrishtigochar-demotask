terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.48.0"
    }
  }
  backend "s3" {
    key = "Data-station"
    region = "us-east-1"
    bucket = "prashanth10s-bucket"
    dynamodb_table = "my-dynamo"
  }
}
 
#provide authentication here
provider "aws" {
  region = "us-east-1"
}
 
