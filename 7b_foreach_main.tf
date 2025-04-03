variable "instances" {
  type = map
  default = {
    "web1" = "t2.micro"
    "web2" = "t3.micro"
    "web3" = "t2.small"
  }
}

provider "aws" {
  region = "us-east-1"  # Change to your preferred AWS region
}

resource "aws_instance" "web" {
  for_each = var.instances

  ami           = "ami-00a929b66ed6e0de6"  # Replace with a valid AMI ID
  instance_type = each.value

  tags = {
    Name = "${each.key}"
  }
}
