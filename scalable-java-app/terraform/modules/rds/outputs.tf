output "rds_address" {
  description = "The address of the RDS instance"
  value       = aws_db_instance.rds_instance.address
}

output "red_endpoint" {
  description = "The address of the RDS instance"
  value       = aws_db_instance.rds_instance.endpoint
}

output "master_user_secret" {
  description = "The ARN of the RDS master user secret"
  value       = aws_db_instance.rds_instance.master_user_secret[0].secret_arn
}