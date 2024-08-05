resource "aws_internet_gateway" "NQ-gw" {
  vpc_id = aws_vpc.NQ_vpc.id

  tags = {
    Name = "NQ-igw"
  }
}

resource "aws_route" "NQ_route" {
  route_table_id = aws_route_table.NQ_rt.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id = aws_internet_gateway.NQ-gw.id
}