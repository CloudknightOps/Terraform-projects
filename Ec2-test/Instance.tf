# Section 1 ( Required)


resource "aws_instance" "app_server" {
  ami           = "ami-06878d265978313ca"
  instance_type = "t2.micro"
  user_data     = <<EOF
  #!/bin/bash
  sudo apt update -y
  sudo apt install apache2 -y
  sudo systemctl start apache2
  sudo systemctl status apache2
  EOF
  tags = {
  Name = "Terraform-Test"
  }
}
