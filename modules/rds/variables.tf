variable "cidr_block" {}

variable "vpc_id" {}

variable "subnet_ids" {}

variable "rds_identifier" {}

variable "rds_instance_type" {}

variable "rds_storage_size" {}

variable "rds_engine" {}

variable "rds_engine_version" {}

variable "rds_db_name" {}

variable "rds_admin_user" {}

variable "rds_admin_password" {}

variable "rds_publicly_accessible" {}

variable "multi_availability_zone" {
  type        = bool
}

variable "name" {}

variable "tags" {}

variable "region" {}
