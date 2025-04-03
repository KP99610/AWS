provider "aws" {
  region = "us-east-1"  # Modify region if needed
}
resource "aws_instance" "example" {
  ami           = "ami-00a929b66ed6e0de6"
  instance_type = "t2.micro"
  key_name      = "MyNewKeyPair" 
  tags = {
    Name = "Terraform-Test-Instance"
  }
}
