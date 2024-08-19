# Specify the AWS provider
provider "aws" {
  region = "us-east-1"  # Change to your preferred region
}

# Define a Security Group
resource "aws_security_group" "example" {
  name        = "example-security-group"
  description = "Security group with unrestricted egress"
  vpc_id      = "vpc-005ade16775dd34dd"  # Replace with your VPC ID

  # Egress rule to allow all outbound traffic
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Ingress rules can be added here if needed
  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "example-security-group"
  }
}
