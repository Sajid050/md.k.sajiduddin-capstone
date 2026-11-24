resource "aws_security_group" "web_sg" {
  name = "sajid-cw-sg"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "monitoring_server" {

  ami           = "ami-0037855f86d0a04b4"
  instance_type = "t2.micro"

  vpc_security_group_ids = [
    aws_security_group.web_sg.id
  ]

  user_data = file("userdata.sh")

  tags = {
    Name = "sajid-cloudwatch-ec2"
  }
}

resource "aws_cloudwatch_metric_alarm" "cpu_alarm" {

  alarm_name          = "sajid-high-cpu"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = 1

  metric_name = "CPUUtilization"
  namespace   = "AWS/EC2"

  period    = 60
  statistic = "Average"

  threshold = 20

  alarm_description = "CPU exceeds 20 percent"

  dimensions = {
    InstanceId = aws_instance.monitoring_server.id
  }
}