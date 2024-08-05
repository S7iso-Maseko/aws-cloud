resource "aws_route_table" "NQ_rt" {
  vpc_id = aws_vpc.NQ_vpc.id

  tags = {
    Name = "NQ-rt"
  }
}

