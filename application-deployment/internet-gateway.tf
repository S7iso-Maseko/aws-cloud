resource "aws_internet_gateway" "nq_igw" {
  vpc_id = aws_vpc.nq_vpc.id
}