resource "aws_ebs_volume" "volume1" {
    availability_zone = var.azone
    size = 1
  
}

resource "aws_volume_attachment" "attachebs" {
    device_name = "/dev/sdv"
    volume_id = aws_ebs_volume.volume1.id
    instance_id = aws_instance.ec2.id
  
}