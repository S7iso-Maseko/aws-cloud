resource "aws_iam_role" "vpc_flow_logs_role" {
  name = "vpc-flow-logs-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Action = "sts:AssumeRole",
        Effect = "Allow",
        Principal = {
          Service = "vpc-flow-logs.amazonaws.com"
        }
      }
    ]
  })
}

resource "aws_iam_policy" "vpc_flow_logs_policy" {
  name = "vpc-flow-logs-policy"

  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Action = [
          "s3:PutObject",
          "s3:GetBucketLocation"
        ],
        Effect = "Allow",
        Resource = [
          "${aws_s3_bucket.s3_logs.arn}/*",
          "${aws_s3_bucket.s3_logs.arn}"
        ]
      }
    ]
  })
}

resource "aws_iam_role_policy_attachment" "vpc_flow_logs_attach" {
  role       = aws_iam_role.vpc_flow_logs_role.name
  policy_arn = aws_iam_policy.vpc_flow_logs_policy.arn
}
