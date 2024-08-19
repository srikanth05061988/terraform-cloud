# provider.tf
provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-04a81a99f5ec58529" # Example AMI ID for Amazon Linux 2 in us-east-1
  instance_type = "t2.micro"
  key_name      = "newkey" # Replace with your key pair name

  tags = {
    Name = "terraform-instance"
  }
}
