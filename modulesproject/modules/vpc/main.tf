resource "aws_vpc" "this" {
  cidr_block = var.cidr_block

  tags = {
    Name = var.vpc_name
  }
}

resource "aws_subnet" "subnet1" {
  cidr_block = var.subnet_cidr
  availability_zone = "ap-south-1a"
  vpc_id = aws_vpc.this.id
  map_public_ip_on_launch = true
}
