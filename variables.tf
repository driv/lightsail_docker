variable "region" {
  default     = "us-east-1"
  description = "AWS region where the instance is deployed"
}

variable "availability_zone" {
  default     = "us-east-1b"
  description = "AWS availability zone in the region where the instance is deployed"
}

variable "environment" {
  default     = "test"
  description = "Value assigned to the Environment tag"
}

variable "owner" {
  default     = "test-owner"
  description = "Value assigned to the Owner tag"
}

variable "ssh_key_file" {
  default     = "~/.ssh/id_rsa.pub"
  description = "Ssh key to be used to connect to the instance"
}

variable "extra_user_data" {
  default     = ""
  type        = string
  description = "Extra commands to include in user_data.sh to be executed on instance startup."
}
