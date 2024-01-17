# EC2 Instance Resources
resource "aws_instance" "ecomm" {
  ami           = "ami-002070d43b0a4f171"
  instance_type = "t2.micro"
  key_name      = "kiki"
  tags = {
    Name = "Ecomm"
  }
}