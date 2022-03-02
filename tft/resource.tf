resource "aws_instance" "web" {
  ami           = var.ec2_ubuntu_ami
  instance_type = var.ec2_instance_type
  tags = {
    Name = "iaac"
  }
}

