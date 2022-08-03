# -------------------------------------------
# Common Variables
# -------------------------------------------

variable "aws_region" {
  description = "AWS infrastructure regio"
  type        = string
  default     = null
}


variable "tags" {
  description = "Tag map for the resource"
  type        = map(string)
  default     = {}
}

# -------------------------------------------
# EC2
# -------------------------------------------
variable "ami" {
  description = "ami"
  type        = string
  default     = null
}

variable "availability_zone" {
  description = "availability_zone"
  type        = string
  default     = null
}

variable "ServerName" {
  description = "ServerName"
  type        = string
  default     = null
}

# -------------------------------------------
# A360
# -------------------------------------------
variable "runner_User" {
  description = "Runner user"
  type        = string
  default     = null
}

variable "runner_Device" {
  description = "Runner device"
  type        = string
  default     = aws_instance.this.private_dns
}