variable "vpc_id" {
    default = aws_vpc.NQ_vpc.id
}

data "aws_internet_gateway" "default" {
  filter {
    name   = "attachment.vpc-id"
    values = [var.vpc_id]
  }
}