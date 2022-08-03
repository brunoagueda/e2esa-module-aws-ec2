output "private_dns" {
  value       = var.runner_Device
  description = "Instance hostname to be passed to Lambda function"
}

#output "runner_user" {
#  value       = var.user
#  description = "Runner user to be passed to Lambda function"
#}