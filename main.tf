resource "aws_vpc" "jayakrishna-vpc" {
  provider = var.region
  cidr_block = var.cidr
}

