resource "tls_private_key" "public_key" {
  algorithm = "RSA"
  rsa_bits = 4096
}

resource "aws_key_pair" "ec2_key_pair" {
    key_name = var.keyname
    public_key = tls_private_key.public_key.public_key_openssh
  
}

output "keyname" {
    value = aws_key_pair.ec2_key_pair.key_name
  
}

output "keyid" {
    value = aws_key_pair.ec2_key_pair.key_pair_id
  
}