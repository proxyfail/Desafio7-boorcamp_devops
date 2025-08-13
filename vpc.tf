resource "aws_vpc" "mi_vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "MiVPC-Terraform"
  }
}

resource "aws_subnet" "mi_subred" {
  vpc_id     = aws_vpc.mi_vpc.id
  cidr_block = "10.0.1.0/24"
  map_public_ip_on_launch = true
  tags = {
    Name = "MiSubred-Terraform"
  }
}

resource "aws_internet_gateway" "mi_igw" {
  vpc_id = aws_vpc.mi_vpc.id
  tags = {
    Name = "MiIGW-Terraform"
  }
}

resource "aws_route_table" "mi_rt" {
  vpc_id = aws_vpc.mi_vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.mi_igw.id
  }
}

resource "aws_route_table_association" "mi_rt_asoc" {
  subnet_id      = aws_subnet.mi_subred.id
  route_table_id = aws_route_table.mi_rt.id
}