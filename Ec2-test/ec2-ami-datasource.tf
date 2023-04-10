data "aws_ami" "Instance" {
  most_recent      = true
  executable_users = "self"
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  
  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    value   = ["x86_64"]
  }

  owners = ["099720109477"] # Canonical
}  