resource "aws_route_table_association" "NA_rt_association" {
  subnet_id = aws_subnet.NQ_subnet_pub_a.id
  route_table_id = aws_route_table.NQ_rt.id
}

resource "aws_route_table_association" "NA_rt_association" {
  subnet_id = aws_subnet.NQ_subnet_pub_b.id
  route_table_id = aws_route_table.NQ_rt.id
}

resource "aws_route_table_association" "NA_rt_association" {
  subnet_id = aws_subnet.NQ_subnet_pub_c.id
  route_table_id = aws_route_table.NQ_rt.id
}