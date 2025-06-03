variable "tags" {
  default = {}
  type    = map(string)
  description = "Extra tags to attach to the RDS resources"
}

variable "update_rds_endpoint" {
  default = true
  type = bool
}

variable "region" {
  description = "Region of the rds"
  type        = string
}

variable "environment" {
  description = "The environment name for the resources"
  type        = string
}

variable "owner" {
  description = "Name of the owner for this RDS"
  type        = string
}

variable "db_username" {
  description = "The username for the RDS database"
  type        = string
}

variable "set_secret_manager_password" {
  description = "To enable master user password or not"
  type        = bool
  default     = false
}

variable "db_password" {
  description = "The password for the RDS database"
  type        = string
}

variable "application" {
  description = "Name of the application"
  type        = string
}

variable "cost_center" {
  description = "Name of the cost-center for the RDS"
  type        = string
}

variable "db_instance_class" {
  description = "The instance class for the RDS database"
  type        = string
}

variable "set_db_password" {
  description = "Condition to check for custom password"
  type        = string
}

variable "db_storage_size" {
  description = "The storage size for the RDS database instance"
  type        = string
}

variable "backup_retention_period" {
  description = "The number of days to retain automated backups."
  type        = number
}

variable "multi_az" {
  description = "Enable multi-AZ deployment for the RDS instance"
  type        = bool
}

variable "delete_automated_backups" {
  description = "Enable deletion of automated backups when the RDS instance is deleted."
  type        = bool
}

variable "copy_tags_to_snapshot" {
  description = "Copy tags to DB snopshots created from the RDS instance."
  type        = bool
}

variable "publicly_accessible" {
  description = "Allow the RDS instance to be publicly accessible"
  type        = bool
}

variable "skip_final_snapshot" {
  description = "Skip the creation fo a final DB snapshot when the RDS instance is deleted."
  type        = bool
}

variable "apply_immediately" {
  description = "Apply changes immediately to the RDS instance"
  type        = bool
}

variable "db_engine" {
  description = "The database engine to use for the RDS instance"
  type        = string
}

variable "db_storage_type" {
  description = "The storage type for the RDS database instance"
  type        = string
}

variable "ingress_from_port" {
  description = "The ingress port for the RDS security group"
  type        = number
}

variable "ingress_to_port" {
  description = "The ingress port for the RDS security group"
  type        = number
}

variable "ingress_protocol" {
  description = "The ingress protocol for the RDS security group"
  type        = string
}

variable "ingress_cidr_blocks" {
  description = "The ingress CIDR blocks for the RDS security group"
  type        = list(string)
}

variable "egress_from_port" {
  description = "The starting port for the egress rules."
  type        = number
}

variable "egress_to_port" {
  description = "The ending port for the egress rules."
  type        = number
}

variable "egress_protocol" {
  description = "The protocol for the egress rules."
  type        = string
}

variable "egress_cidr_blocks" {
  description = "The CIDR blocks for the egress rules."
  type        = list(string)
}

variable "subnet_ids" {
  description = "The IDs of the subnets"
  type        = list(string)
}

variable "vpc_id" {
  description = "The ID of the VPC"
  type        = string
}

variable "parameter_store_secret_name" {
  description = "Name of the parameter strore secret"
  type        = string
}

variable "type" {
  description = "Parameter store type"
  type        = string
}