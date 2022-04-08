provider "aws" {
  region     = "us-east-1"
}

resource "aws_instance" "test" {
  #user_data            = file("C:/VS_code/terraform_test/script.ps1") #C:\VS_code\terraform_test\script.ps1
  availability_zone    = "us-east-1a"
#   get_password_data    = "true"
#   ami                  = data.aws_ami.latest_linux_amzn.id
    ami                  = "ami-0c02fb55956c7d316"
  instance_type        = var.ec2_type
  key_name             = var.key
#   subnet_id            = var.subnet
#   iam_instance_profile = var.role
#   security_groups      = var.sgs


#   root_block_device {
#     volume_size = var.root_disk_size
#   }

#   ebs_block_device {
#     device_name = "sdh"
#     volume_size = var.ad_disk_size
#   }
# }

# data "aws_ami" "latest_windows_2019" {
#   owners      = ["amazon"]
#   most_recent = true
#   filter {
#     name   = "name"
#     values = ["Windows_Server-2019-English-Full-Base-*"]
#   }
# }

# data "aws_ami" "latest_linux_amzn" {
#   owners      = ["137112412989"]
#   most_recent = true
#   filter {
#     name   = "name"
#     values = ["amzn2-ami-kernel-5.10-hvm-*"]
#   }
# }