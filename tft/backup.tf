terraform {
  backend "s3" {
    bucket = "ynterraformbkp"
    key    = "tfstate"
    region = "us-east-2"
    shared_credentials_file = "/home/yvette/.aws/creds"
    profile                  =  "yvesprofile"

  }

 }
