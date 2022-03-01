resource "aws_instance" "web" {
  ami           = "ami-0fb653ca2d3203ac1"
  instance_type = "t2.micro"
  count = 2
  tags = {
    Name = "iaac"
  }
}

resource "aws_s3_bucket" "b" {
  bucket = "yve-tf-test-bucket"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

