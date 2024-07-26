resource "aws_instance" "my_instance" {
  ami                         = "ami-071878317c449ae48"
  instance_type               = var.instance_type
  subnet_id                   = var.subnet_id
  security_groups             = [aws_security_group.ssh_sg.id]
  key_name                    = var.key_name
  associate_public_ip_address = true

  tags = {
    Name = "MyInstance"
  }
}