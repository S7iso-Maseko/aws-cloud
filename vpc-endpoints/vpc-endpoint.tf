resource "aws_vpc_endpoint" "s3_vpc" {
  vpc_id = aws_vpc.custom_vpc.id
  service_name = "com.amazonaws.eu-west-1.s3"
  vpc_endpoint_type = "Gateway"

  route_table_ids = [aws_route_table.custom_route_table.id]

  tags = {
    Name = "nqs-vpc-endpoint"
  }
}