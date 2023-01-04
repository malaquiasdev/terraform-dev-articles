provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "hello-terraform" {
  ami           = "ami-09dd2e08d601bff67"
  instance_type = "t2.micro"
  tags = {
    Project   = "hello-terraform"
    ManagedBy = "Terraform"
  }
}
