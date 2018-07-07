variable "aws_region" {
  description = "VPC region"
  default     = "us-west-2"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC - Mastering AWS Security pg ~90"
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet"
  default     = "10.0.1.0/24"
}

variable "private_subnet_cidr" {
  description = "CIDR for the private subnet"
  default     = "10.0.2.0/24"
}

variable "ami" {
  description = "AMI for Windows Server 2016 Base on EC2"
  default     = "ami-3703414f"
}

#might not be needed
#variable "key_path" {
#  description = "SSH Public Key path"
#  default     = "id_rsa.pub"
#}

