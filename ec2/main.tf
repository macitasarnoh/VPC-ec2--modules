resource "aws_instance" "web" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  vpc_security_group_ids = [var.sg]
  subnet_id              = var.subnet_id

  tags = {
    Name = var.tags
  }
}