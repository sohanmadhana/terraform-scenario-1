data "aws_ami" "ami" {
    most_recent = true
    owners = ["amazon"]

    filter {
        name = "name"
        values = ["amzn2-ami-hvm*"]
    }
  
}
resource "aws_instance" "ec2" {
    ami = data.aws_ami.ami.id
    instance_type = var.instance_type
    key_name = aws_key_pair.ec2_key_pair.key_name
    availability_zone = var.azone
    security_groups = [ "ec2_sg" ]
  
}

