variable "aws_region" {
  type        = string
  default     = "eu-central-1"
  description = "AWS region"
}

variable "vpc_name" {
  type        = string
  default     = "zafdrive-vpc"
}

variable "vpc_cidr" {
  type        = string
  default     = "10.0.0.0/16"
}

variable "azs" {
  type        = list(string)
  default     = ["eu-central-1a", "eu-central-1b", "eu-central-1c"]
}

variable "public_subnets" {
  type        = list(string)
  default     = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
}

variable "private_subnets" {
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

variable "environment" {
  type        = string
  default     = "dev"
}
