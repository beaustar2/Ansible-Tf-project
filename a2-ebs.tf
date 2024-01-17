/*
# EBS Volume Resources
resource "aws_volume_attachment" "diskspace" {
  device_name = "/dev/sdh"
  volume_id   = aws_ebs_volume.my-diskspace.id
  instance_id = aws_instance.ecomm.id
}

resource "aws_ebs_volume" "my-diskspace" {
  availability_zone = "us-east-1a"
  size              = 20

  tags = {
    Name = "Ansible_Tf_Volume"
  }
}
*/