# Resource block
resource "aws_instance" "webserver" {
  ami           = var.ami
  instance_type = var.instanceType
  tags = {
    Name = "Terraform-server"
  }
}
