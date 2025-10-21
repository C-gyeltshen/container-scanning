
resource "aws_instance" "web-server" {
  ami           = "ami-024f768332f0"
  instance_type = "m8g.medium"

  tags = {
    Name = "iac-testing"
  }
}

resource "aws_s3_bucket" "test-bucket" {
  bucket = "my-bucket"
}