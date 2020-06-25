variable "name" {
  type        = string
  description = "Common name given to the lambda function, the IAM role, the lambda permission statement, and the log subscription filter."
}

variable "region" {
  type        = string
  description = "The AWS region where the AWS CloudWatch Logs are located."
}

variable "account_id" {
  type        = string
  description = "The ID of the AWS account where the AWS CloudWatch Logs are located."
}

variable "log_groups" {
  type        = list(string)
  description = "The names of the AWS CloudWatch log group to forward to the syslog server."
  default     = []
}

variable "syslog_server_host" {
  type        = string
  description = "The host for the syslog server (e.g., logs5.papertrailapp.com)."
}

variable "syslog_server_port" {
  type        = number
  description = "The port for the syslog server."
}

variable "disable_tls" {
  type        = string
  default     = "0"
  description = "Whether to use TLS or not when communicating with the syslog server."
}

variable "filter_pattern" {
  type        = string
  description = "Log subscription filter pattern"
  default     = ""
}
