resource "aws_route_table" "custom_route_table" {
    vpc_id = aws_vpc.custom_vpc.id

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.igw.id
    }

    tags = {
      Name = "nqs-public-rt"
    }
}

resource "aws_route_table_association" "custom_rt_association" {
    route_table_id = aws_route_table.custom_route_table.id
    subnet_id = aws_subnet.public_sub.id
}