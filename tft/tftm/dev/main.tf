provider "aws" {
region = "us-east-2"
shared_credentials_files =["/home/yvette/.aws/creds"]
profile = "yvesprofile"
}
module "my_vpc" {
source = "../module/vpc"
vpc_cidr = "10.0.0.0/16"
vpc_tenancy = "default"
}
module "my_ec2" {
source = "../module/ec2"
ec2_ami = "ami-0fb653ca2d3203ac1"
ec2_instance = "t2.micro"
}
