resource "aws_subnet" "nq_sub1" {
  vpc_id                  = aws_vpc.nq_vpc.id
  cidr_block              = "10.10.1.0/24"
  availability_zone       = var.subnet_az
  map_public_ip_on_launch = true
}