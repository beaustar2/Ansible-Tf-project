# EC2 Instance Resources
resource "aws_instance" "devops" {
  ami           = "ami-0005e0cfe09cc9050"
  instance_type = "t2.micro"
  key_name = "Oje"
  tags = {
    Name = "Devops"
}
}