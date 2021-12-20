resource "aws_launch_configuration" "web" {
  name_prefix = "web-"

  image_id = "ami-04dd4500af104442f" # Amazon Linux 2 AMI (HVM), SSD Volume Type
  instance_type = "t2.micro"
  # key_name = ""

  security_groups = [ aws_security_group.allow_http.id ]
  associate_public_ip_address = true

  lifecycle {
    create_before_destroy = true
  }
}
