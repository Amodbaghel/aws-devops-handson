variable "aws_region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "image_url" {
  description = "ECR image URL"
  type        = string
}
