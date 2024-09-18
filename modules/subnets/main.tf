data "aws_vpc" "example" {
  cidr_block = "10.0.0.0/16"
  owner_id = "976806633434"
}

resource "aws_subnet" "public-subnet1" {
  vpc_id     = data.aws_vpc.example.id
  cidr_block = var.cidr
  availability_zone = "eu-north-1a"
  map_public_ip_on_launch = true

  tags = {
    Name = "public-subnet1"
  }
  depends_on = [ aws_vpc.jayakrishna-vpc ]
}

# Specify true to indicate that instances launched into the subnet should be assigned a public IP address, default is false.
