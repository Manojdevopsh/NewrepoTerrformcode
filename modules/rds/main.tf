data "aws_availability_zones" "available" {}

resource "aws_db_subnet_group" "db_sub_gr" {
  description            = "terrafom db subnet group"
  name                   = var.name
  subnet_ids             = var.subnet_ids
  
  tags = var.tags
}
resource "aws_db_instance" "db" {
  engine            		 = var.rds_engine
  engine_version     		 = var.rds_engine_version
  identifier        		 = var.name
  instance_class    		 = var.rds_instance_type
  allocated_storage 		 = var.rds_storage_size
  name              		 = var.rds_db_name
  username          		 = var.rds_admin_user
  password          		 = var.rds_admin_password
  db_subnet_group_name	 = aws_db_subnet_group.db_sub_gr.id
  vpc_security_group_ids = ["${aws_security_group.rds_security_group.id}"]
  skip_final_snapshot 	 = true
  publicly_accessible		 = var.rds_publicly_accessible
  multi_az               = var.multi_availability_zone

  tags = merge(
    {
      Name        = var.name,
    },var.tags
  )
}

resource "aws_security_group" "rds_security_group" {
  name        	= "${var.name}-rds-sg"
  vpc_id	      = var.vpc_id
  description   = "RDS Security Group"

  ingress {
    from_port   = 5432
    to_port     = 5432
    protocol    = "tcp"
    cidr_blocks = ["${var.cidr_block}"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = merge(
    {
      Name = var.name,
    },var.tags
  )
}
