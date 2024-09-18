resource "aws_subnet" "public-subnet1" {
  vpc_id     = aws_vpc.jayakrishna-vpc.id
  cidr_block = var.cidr
  availability_zone = "eu-north-1a"
  map_public_ip_on_launch = true

  tags = {
    Name = "public-subnet1"
  }
}

# Specify true to indicate that instances launched into the subnet should be assigned a public IP address, default is false.
