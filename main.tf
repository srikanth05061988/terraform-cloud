# provider.tf
provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0" # Example AMI ID for Amazon Linux 2 in us-east-1
  instance_type = "t2.large"
  key_name      = "aws" # Replace with your key pair name

  
  tags = {
    Name = "terraform-instance"
  }
}