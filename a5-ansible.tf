# Creating Ansible Master EC2 Resources
resource "aws_instance" "ansible_master" {
  ami                    = "ami-002070d43b0a4f171"
  instance_type          = "t3.micro"
  subnet_id              = aws_subnet.ecomm-public-subnet.id
  key_name               = "kiki"
  vpc_security_group_ids = [aws_security_group.ecomm-sg.id]
  user_data              = file("install-ansible.sh")
  private_ip             = "10.0.1.09"

  tags = {
    Name = "Ansible Master"
  }
}

# Creating Ansible Node EC2 Resources
resource "aws_instance" "ansible_node1" {
  ami                    = "ami-002070d43b0a4f171"
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.ecomm-public-subnet.id
  key_name               = "kiki"
  vpc_security_group_ids = [aws_security_group.ecomm-sg.id]
  user_data              = file("install-ansible.sh")
  private_ip = "10.0.1.09"
  tags = {
    Name = "Ansible_node1"
  }
}