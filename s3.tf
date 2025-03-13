provider "aws" {
  alias  = "us"
  region = "us-east-1"  # Replace with your region
}


resource "aws_s3_bucket" "my_bucket" {
  
  bucket = "s3bucketbhavana123"  # Replace with a globally unique name
}

resource "aws_s3_bucket_versioning" "versioning_example" {
  
  bucket = aws_s3_bucket.my_bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}
