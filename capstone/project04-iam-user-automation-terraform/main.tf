resource "aws_iam_user" "s3_user" {
  name = "sajid-s3-reader"
}

resource "aws_iam_user_policy_attachment" "attach_policy" {

  user       = aws_iam_user.s3_user.name
  policy_arn = var.s3_read_policy_arn
}