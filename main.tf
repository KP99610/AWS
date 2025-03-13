provider "aws" {
  region = "us-east-1"  # Modify region if needed
}
resource "aws_instance" "my_ec2" {
  ami           = "ami-08b5b3a93ed654d19"  # Replace with a valid AMI ID
  instance_type = "t2.micro"
  key_name      = "MyNewKeyPair"  # Replace with an existing AWS key pair
  tags = {
    Name = "TerrafornnewInstance"  # Modify instance name
  }
}
