# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}
#creating the ec2 instance
resource "aws_instance" "app_server" {
  ami           = "ami-091b1c4aa02ba6400"
  instance_type = "t2.micro"

  tags = {
    Name = "my-ec2-instance"
    Environment  = "dev"
    
  }
}
