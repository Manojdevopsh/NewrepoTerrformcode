provider "aws" {
  access_key = var.access_key
  secret_key = var.secret_key
  region     = var.region
}

#Create RDS instances
module "rds" {
  source                         = "./modules/rds"
  vpc_id                         = var.vpc_id
  subnet_ids                     = var.subnet_ids
  name                           = var.name
  cidr_block                     = var.cidr_block
  region                         = var.region
  rds_instance_type              = var.rds_instance_type
  rds_admin_user                 = var.rds_admin_user
  rds_admin_password             = var.rds_admin_password
  rds_engine                     = var.rds_engine
  multi_availability_zone        = var.multi_availability_zone
  rds_storage_size               = var.rds_storage_size
  rds_db_name                    = var.rds_db_name
  rds_engine_version             = var.rds_engine_version
  rds_publicly_accessible        = var.rds_publicly_accessible
  rds_identifier                 = var.rds_identifier
  tags                           = var.tags
} 

