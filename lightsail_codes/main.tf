resource "aws_lightsail_instance" "test_server" {
  name              = "test_server"
  availability_zone = var.az
  blueprint_id      = var.blueprintID
  bundle_id         = var.bundleID
  user_data         = "sudo yum install -y httpd && sudo systemctl start httpd && sudo systemctl enable httpd && echo '<h1>Here is my application testing using Terraform</h1>' | sudo tee /var/www/html/index.html"
  tags = {
    name = "devops_Team"
    env  = "dev"
  }
}