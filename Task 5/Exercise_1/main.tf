provider "aws" {
  region = "us-east-1"
}


# Provision 4 AWS t2.micro EC2 instances named Udacity T2
resource "aws_instance" "udacity-t2" {
  ami = "ami-0323c3dd2da7fb37d"
  instance_type = "t2.micro"
  subnet_id = "subnet-02aa53875e8777b6b"
  count = 4
  tags = {
    Name = "Udacity T2"
  }
}


# Provision 2 m4.large EC2 instances named Udacity M4
resource "aws_instance" "udacity-m4" {
  ami = "ami-0323c3dd2da7fb37d"
  instance_type = "m4.large"
  subnet_id = "subnet-02aa53875e8777b6b"
  count = 2
  tags = {
    Name = "Udacity M4"
  }
}