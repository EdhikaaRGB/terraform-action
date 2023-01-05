#resource "aws_ecs_cluster" "cluster" {
#  name = "${var.project}-${var.environment}"
#  setting {
#    name  = "containerInsights"
#    value = "enabled"
#  }
#  capacity_providers = ["FARGATE", ]
#}


resource "aws_instance" "myec2" {
  ami = "ami-0cca134ec43cf708f"
  instance_type = "t2.micro"
  tags = {
    Name = "${var.project}-${var.environment}"
  }
}
