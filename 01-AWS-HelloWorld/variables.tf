variable "ami_id" {
  description = "The AMI ID for the EC2 instance"
  type        = string
}


variable "size" {
  description = "This is instance size"
  type        = string
  default = "t2.small"  
}

output "Privateip" {
  value       = aws_instance.web.private_ip
}