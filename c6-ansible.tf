# Creating Ansible Master EC2 Resources
resource "aws_instance" "ansible_master" {
  ami           = "ami-0005e0cfe09cc9050"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.ecomm-public-subnet.id
  key_name = "Oje"
  vpc_security_group_ids = [aws_security_group.ecomm-sg.id]
  user_data = file["install-ansible.sh"]
  private_ip = "10.0.1.10"

  tags = {
    Name = "Ansible Master"
  }
}

# Creating Ansible Node EC2 Resources
resource "aws_instance" "ansible_node1" {
  ami           = "ami-0005e0cfe09cc9050"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.ecomm-public-subnet.id
  key_name = "Oje"
  vpc_security_group_ids = [aws_security_group.ecomm-sg.id]
  user_data = file["install-ansible.sh"]
  private_ip = "10.0.1.12"

  tags = {
    Name = "Ansible Node1"
  }
}