variable "access_key" {
  description = "AWS ACCESS_KEY"
  default = ""
}

variable "secret_key" {
  description = "AWS SECRET_KEY"
  default = ""
}

variable "region" {
  description = "AWS region to launch servers."
  default     = "ap-southeast-1"
}

variable "name" {
  type        = string
  description = "Name of the VPC"
  default = "terraform-demo"
}

variable "cidr_block" {
  description = "CIDR for the whole VPC"
  type = string
  default = "10.0.0.0/16"
}


variable "rds_instance_type" {
  default = "db.t2.micro"
}

variable "rds_admin_user" {
  default = "dbadmin"
}

variable "rds_admin_password" {
  default = "super_secret_password"
}

variable "rds_engine" {
  default = "mysql"
}

variable "multi_availability_zone" {
  default     = true
  type        = bool
}


variable "rds_storage_size" {
  default = "5"
}

variable "rds_db_name" {
  default = "iac_book_db"
}

variable "rds_engine_version" {
  default = "8.0.20"
}

variable "rds_publicly_accessible" {
  default = "true"
}

variable "rds_identifier" {
  default = "db"
}

variable "tags" {
  type = map(string)
  description = "tags"
  default = {
  Product = "weinvest" 
  }
}

