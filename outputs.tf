output "private_dns" {
  value       = aws_instance.this.private_dns
  description = "Instance hostname to be passed to Lambda function"
}

#output "runner_user" {
#  value       = var.user
#  description = "Runner user to be passed to Lambda function"
#}