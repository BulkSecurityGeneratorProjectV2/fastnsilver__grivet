variable "name" {
  default = "bastion"
}

variable "environment" {
}

variable "ami" {
}

variable "instance_type" {
  default = "t2.micro"
}

variable "iam_instance_profile" {
}

variable "user_data_file" {
  default = "user_data.sh"
}

variable "s3_bucket_name" {
}

variable "s3_bucket_uri" {
  default = ""
}

variable "ssh_user" {
  default = "ubuntu"
}

variable "enable_hourly_cron_updates" {
  default = "false"
}

variable "keys_update_frequency" {
  default = ""
}

variable "additional_user_data_script" {
  default = ""
}

variable "region" {
  default = "us-west-2"
}

variable "vpc_id" {
}

variable "security_group_ids" {
  description = "Comma-separated list of security groups to apply to the bastion."
  default = ""
}

variable "subnet_ids" {
  default = []
  description = "A list of subnet ids"
}

variable "eip" {
  default = ""
}