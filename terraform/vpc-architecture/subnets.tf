resource "aws_subnet" "NQ_subnet_pub_a" {
  vpc_id = aws_vpc.NQ_vpc.id
  cidr_block = "10.10.1.0/24"

  availability_zone = "eu-west-1a"

  tags = {
    Name = "subnet-a"
  }
}

resource "aws_subnet" "NQ_subnet_pub_b" {
  vpc_id = aws_vpc.NQ_vpc.id
  cidr_block = "10.10.2.0/24"

  availability_zone = "eu-west-1b"

  tags = {
    Name = "subnet-b"
  }
}

resource "aws_subnet" "NQ_subnet_pub_c" {
  vpc_id = aws_vpc.NQ_vpc.id
  cidr_block = "10.10.3.0/24"

  availability_zone = "eu-west-1c"

  tags = {
    Name = "subnet-c"
  }
}