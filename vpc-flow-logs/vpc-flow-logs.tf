resource "aws_flow_log" "vpc_fl" {
  log_destination      = aws_s3_bucket.s3_logs.arn
  log_destination_type = "s3"
  traffic_type         = "ALL"
  vpc_id               = aws_vpc.custom_vpc.id
}

