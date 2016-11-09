variable "aws_region" {
  description = "The AWS region to create things in."
  default     = "us-west-2"
}

# https://cloud-images.ubuntu.com/locator/ec2/
# ubuntu-xenial-16.04 (x64)
variable "aws_amis" {
  default = {
    "us-east-1" = "ami-40d28157"
    "us-west-2" = "ami-a9d276c9"
  }
}

variable "key_name" {
  description = "Name of the SSH keypair to use in AWS."
}
