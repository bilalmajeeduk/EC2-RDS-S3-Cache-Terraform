

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.main.id

  tags = {
    "Name" = "${local.comman_name}-testing-igw" 
  }
}

resource "aws_route_table" "bilal-public-rt" {
  vpc_id = aws_vpc.main.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }
  tags = {
    "Name" =  "${local.comman_name}-testing-rt"
  }
}

resource "aws_route_table_association" "with-public-subnet-1" {
  subnet_id = aws_subnet.public-subnet-1.id
  route_table_id = aws_route_table.bilal-public-rt.id
}

resource "aws_route_table_association" "with-public-subnet-2" {
  subnet_id = aws_subnet.public-subnet-2.id
  route_table_id = aws_route_table.bilal-public-rt.id
}