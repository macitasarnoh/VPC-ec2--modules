resource "aws_security_group" "ssh-security-group" {
  name        = "Allow SSH ACCESS"
  description = "Bastion Host Security Group"
   vpc_id    = var.vpc_id

  dynamic "ingress" {
    iterator = port
    for_each = var.ingressrule

    content {
      description = "SSH Acess"
      from_port   = port.value
      to_port     = port.value
      protocol    = "tcp"
      cidr_blocks = ["10.0.0.0/16"]
    }
  }

  dynamic "egress" {
    iterator = port
    for_each = var.egressrule
    content {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_blocks = ["10.0.0.0/16"]
    }
  }

  tags = {
    Name = "SSH Security Group"
  }
}




