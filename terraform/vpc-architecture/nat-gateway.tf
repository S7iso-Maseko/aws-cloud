resource "aws_nat_gateway" "NQ-ngw" {
  subnet_id = aws_subnet.NQ_subnet_pub_a.id
}

resource "aws_route" "NQ_route" {
  route_table_id = aws_route_table.NQ_rt.id
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id = aws_nat_gateway.NQ-ngw.id
}

resource "aws_route" "NQ_route" {
  route_table_id = aws_route_table.NQ_rt.id
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id = aws_nat_gateway.NQ-ngw.id
}