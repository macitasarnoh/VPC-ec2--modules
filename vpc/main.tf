resource "aws_vpc" "project3" {
  cidr_block = var.vpc_cidr

  tags = {
    Name = var.tags_name3
  }
}


resource "aws_subnet" "project2" {
  vpc_id     = aws_vpc.project3.id
  cidr_block = var.aws_subnet_cidr

  tags = {
    Name = var.tags_name
  }
}

resource "aws_subnet" "project1" {
  vpc_id     = aws_vpc.project3.id
  cidr_block = var.aws_subnet_cidr2

  tags = {
    Name = var.tags_name2
  }
}

