provider "aws" {
  region     = "us-east-1"
}

resource "aws_instance" "test" {
    availability_zone    = "us-east-1a"
#   get_password_data    = "true"
    ami                  = data.aws_ami.latest_linux_amzn.id
    # ami                  = "ami-0c02fb55956c7d316"
    instance_type        = var.ec2_type
    key_name             = var.key

# data "aws_ami" "latest_windows_2019" {
#   owners      = ["amazon"]
#   most_recent = true
#   filter {
#     name   = "name"
#     values = ["Windows_Server-2019-English-Full-Base-*"]
#   }
# }

data "aws_ami" "latest_linux_amzn" {
  owners      = ["137112412989"]
  most_recent = true
  filter {
    name   = "name"
    values = ["amzn2-ami-kernel-5.10-hvm-*"]
  }
}