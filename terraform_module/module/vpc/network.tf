resource "aws_vpc" "main" {

  cidr_block = var.vpc_cidr

  instance_tenancy = var.tenancy

  tags = {

    Name = "Test"

  }

}


resource "aws_subnet" "public" {

  vpc_id = aws_vpc.main.id

  cidr_block = var.subnet_cidr_public

  tags = {

    Name = "Public_subnet"

  }

}


resource "aws_subnet" "newpublicsn" {

  vpc_id = aws_vpc.main.id

  cidr_block = var.subnet_cidr_newpublicsn

  tags = {

    Name = "New_Public_subnet"

  }

}


resource "aws_subnet" "private" {

  vpc_id = aws_vpc.main.id

  cidr_block = var.subnet_cidr_private

  tags = {

    Name = "Private_subnet"
  }

}

output "vpc_id" {

  value = aws_vpc.main.id

}

output "subnet_id_public" {

  value = aws_subnet.public.id

}

output "subnet_id_private" {

  value = aws_subnet.private.id

}

output "subnet_id_newpublicsn" {

  value = aws_subnet.newpublicsn.id

}
