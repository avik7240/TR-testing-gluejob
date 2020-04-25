provider "aws" {
  version = "~> 2.0"
  region  = "us-east-1"
  #shared_credentials_file = "%USERPROFILE%\\.aws\\credentials"
  #profile = "terraform" 
  access_key = "AKIAQP2G5EN2WN5OIY3D"
  secret_key = "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"
}
terraform {
  backend "s3" {
    bucket = "mygluebucket-csv"
    region = "us-east-1"
    key    = "terraform.tfstate"
  }
}
