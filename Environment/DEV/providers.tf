provider "aws" {
  version = "~> 2.0"
  region  = "us-east-1"
  shared_credentials_file = "%USERPROFILE%\\.aws\\credentials"
  profile = "default" 
  #access_key = var.accesskey
  #secret_key = var.secretkey
}
terraform {
  backend "s3" {
    bucket = "mygluebucket-csv"
    region = "us-east-1"
    key    = "terraform.tfstate"
  }
}
