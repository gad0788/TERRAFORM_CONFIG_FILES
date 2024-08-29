resource "aws_lightsail_instance" "test_server" {
  name              = "test_server"
  availability_zone = "us-east-1b"
  blueprint_id      = "amazon_linux_2"
  bundle_id         = "nano_3_0"
  user_data         = "sudo yum install -y httpd && sudo systemctl start httpd && sudo systemctl enable httpd && echo '<h1>Here is my application testing using Terraform</h1>' | sudo tee /var/www/html/index.html"
  tags = {
    name = "devops_Team"
    env  = "dev"
  }
}