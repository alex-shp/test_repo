# variable "subnet" {
#   default = "subnet-0521e28b40e74a65a"
# }

# variable "sgs" {
#   default = ["sg-0f4e3363f42ef547f", "sg-0fe69c04153b9f9b8", "sg-006955d2340ad85c7", "sg-03ebf664f90e00d1e", "sg-03ebf664f90e00d1e"]
# }

# variable "role" {
#   default = "efx-cloud-ec2s-developer-provisioner-role-profile"
# }

variable "ec2_type" {
  default = "t2.micro"
}

# variable "root_disk_size" {
#   default = "250"
# }

# variable "ad_disk_size" {
#   default = "500"
# }

variable "key" {
  default = "test"
}
