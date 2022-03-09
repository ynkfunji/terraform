resource "aws_instance" "web" {
  ami           = var.ec2_ami

  instance_type = var.ec2_instance
  
  tags = {
  
     Name = "tf_instance"
  
  }

}

