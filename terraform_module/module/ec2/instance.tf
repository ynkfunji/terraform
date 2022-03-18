resource "aws_instance" "web" {

  ami = var.ec2_ami

  instance_type = var.ec2_instance

  key_name = var.ec2_key

  subnet_id = var.subnet_id_public

  tags = {

    Name = "HelloWorld"
  }

}

resource "aws_instance" "my_instance" {

  ami = var.new_ec2_ami

  instance_type = var.new_ec2_instance
  
  subnet_id = var.subnet_id_newpublicsn
  
  key_name = var.my_ec2_key

  tags = {

    Name = "My_Server"
  }

}
