provider "aws" {
  version = "~> 2.0"
  region  = "us-east-1"
  shared_credentials_file = "%USERPROFILE%\\.aws\\credentials"
  profile = "default" 
  #access_key = "AKIAQP2G5EN2Z5AMD62B"
  #secret_key = "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"
}
terraform {
  backend "s3" {
    bucket = "mygluebucket-csv"
    region = "us-east-1"
    key    = "terraform.tfstate"
  }
}
