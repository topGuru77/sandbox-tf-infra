
variable "ami_id" {
  type        = string
  default     = "ami-00a929b66ed6e0de6"
  description = "instance ami used"
}

variable "instance_type" {
  type        = string
  default     = "t2.micro"
  description = "Instance type used"
}
