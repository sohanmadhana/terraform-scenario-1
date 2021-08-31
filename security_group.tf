data "aws_instance" "ec2" {
    instance_id = aws_instance.ec2.id
  
}

resource "aws_security_group" "ec2_sg" {
    name = var.sgname
    description = "Allow all traffic"

    ingress {
      from_port        = 22
      to_port          = 22
      protocol         = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]
      
    }

    ingress {
      from_port        = 443
      to_port          = 443
      protocol         = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]
      
    }

    egress {
      from_port        = 0
      to_port          = 0
      protocol         = "-1"
      cidr_blocks      = ["0.0.0.0/0"]
    }

    tags = {
      Name = "allow_all_traffic"
    }
  }
  

# resource "aws_network_interface_sg_attachment" "sgattach" {
#     security_group_id = aws_security_group.ec2_sg.id
#     network_interface_id = data.aws_instance.ec2.network_interface_id

#   }

    
  
