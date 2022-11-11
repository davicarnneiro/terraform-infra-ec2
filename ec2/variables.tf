variable "region" {
  type        = string
  description = "Define what region the instance will be deployed"
  default     = "us-east-2"
}

variable "env" {
  type        = string
  description = "Environment of the Application"
  default     = "terraform"
}

variable "ami" {
  type        = string
  description = "AWS AMI to be used "
  default     = "ami-0fb653ca2d3203ac1"
}

variable "instance_type" {
  type        = string
  description = "AWS Instance type defines the hardware configuration of the machine"
  default     = "t2.medium"
}

variable "vpc_id" {
  type        = string
  description = "Define a VPC"
  default     = "vpc-08c01277098e511cb"
}

variable "subnet_id" {
  type        = string
  description = "Defines the subnet to be used in the infrastructure"
  default     = "subnet-007e8cef1eebcb8d4"
}

variable "key_name" {
  type        = string
  description = "Defines the ssh key to be used in the infrastructure"
  default     = "devops"
}

variable "associate_public_ip_address" {
  type        = string
  description = "Defines the public IP to be used in the instance"
  default     = "true"
}

variable "tags" {
  description = "Define server tags"
  default = {
    "Name" = "Ubuntu Server"
    "Env"  = "Estudo"
  }
}

# Define EC2 instance volume size
variable "ec2_volume_size" {
  type        = number
  description = "Amazon EC2 instance volume size"
  default     = 30
}

variable "ec2_volume_type" {
  type        = string
  description = "Amazon EC2 instance volume type"
  default     = "gp2"
}
