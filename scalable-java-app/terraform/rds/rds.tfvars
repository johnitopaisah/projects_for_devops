# Network
region = "us-west-2"
vpc_id = "vpc-04dde7b634fc15e47"
subnet_ids = [
  "subnet-05ea0b5e6e698a015",
  "subnet-0e298f2d97d8a8437",
  "subnet-0f0f77996c478e974"
]
multi_az = false
publicly_accessible = true

# DB Var Configuration
db_engine = "mysql"
db_storage_type = "gp2"
db_username = "johniisah"
db_instance_class = "db.t3.micro"
db_storage_size = 20
set_secret_manager_password = true
set_db_password = true
db_password = "mypassword"

# Security Group Configuration
ingress_from_port = 3306
ingress_to_port = 3306
ingress_protocol = "tcp"
ingress_cidr_blocks = ["0.0.0.0/0"]

egress_from_port = 0
egress_to_port = 0
egress_protocol = "-1"
egress_cidr_blocks = ["0.0.0.0/0"]

# Backup Configuration
backup_retention_period = 7
delete_automated_backups = true
copy_tags_to_snapshot = true
skip_final_snapshot = true
apply_immediately = true

# Parameter Store
parameter_store_secret_name = "/dev/petclinic/rds_endpoint"
type = "String"

# Tags Configuration
tags = {
  Name        = "petclinic-db"
  Environment = "dev"
  Application = "petclinic"
  Owner       = "johniisah"
  cost_center = "petclinic-cost-center"
  Project     = "petclinic-project"
  ManagedBy   = "Terraform"
  CreatedBy   = "johniisah"
}

variable "db_storage_size" {
  description = "The storage size for the RDS database instance"
  type        = number
}

variable "set_db_password" {
  description = "Condition to check for custom password"
  type        = bool
}
