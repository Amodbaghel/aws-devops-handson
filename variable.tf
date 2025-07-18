variable "ami" {
  description = "Give ami"
  default     = "ami-020cba7c55df1f615"
}
variable "key" {
  description = "key name"
  type        = string
  default     = "amod"
}
variable "instance" {
  type    = string
  default = "t2.micro"
}
