resource "aws_vpc" "jayakrishna-vpc" {
  cidr_block = var.cidr
  tags = {
    name = "ambavarapu-vpc"
  }
}

