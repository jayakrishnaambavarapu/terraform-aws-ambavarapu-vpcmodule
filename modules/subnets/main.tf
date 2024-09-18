data "aws_vpc" "example" {
 tags = {
  name = "ambavarapu-vpc"
 }
 
}

resource "aws_subnet" "public-subnet1" {
  vpc_id     = data.aws_vpc.example.id
  cidr_block = var.cidr
  availability_zone = "eu-north-1a"
  map_public_ip_on_launch = true

  tags = {
    Name = "public-subnet1"
  }
  depends_on = [ module.ambavarapu-vpcmodule.jayakrishna-vpc-result ]
}

# Specify true to indicate that instances launched into the subnet should be assigned a public IP address, default is false.
