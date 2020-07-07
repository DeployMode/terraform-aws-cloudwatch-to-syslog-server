output "log_groups" {
  value       = var.log_groups
  description = "The name of the log groups that Lambda is subscribed to. Its log events are forwarded to the syslog server."
}

output "lambda_arn" {
  value       = aws_lambda_function.cloudwatch_to_syslog_server.arn
  description = "The ARN of the lambda function subscribed to the log group."
}

output "lambda_log_group_name" {
  value       = aws_cloudwatch_log_group.lambda_log_group.name
  description = "CloudWatch log group for Lambda name"
}

output "lambda_log_group_arn" {
  value       = aws_cloudwatch_log_group.lambda_log_group.arn
  description = "CloudWatch log group for Lambda ARN"
}

