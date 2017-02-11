variable "vpc_Name" {
  type = "string"

}


resource "aws_vpc" "vpc" {
  vpc_name = "${var.vpc_name}"
 }
