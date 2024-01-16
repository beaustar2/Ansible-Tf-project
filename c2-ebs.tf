/*
# EBS Volume Resources
resource "aws_volume_attachment" "diskspace" {
  device_name = "/dev/sdh"
  volume_id   = aws_ebs_volume.my-diskspace.id
  instance_id = aws_instance.devops.id
}

resource "aws_ebs_volume" "my-diskspace" {
  availability_zone = "us-east-1a"
  size              = 25

  tags = {
    Name = "TF-Volume"
  }
}
*/