module "cluster" {
  source  = "terraform-aws-modules/rds-aurora/aws"

  name           = "rds-aurora"
  engine         = "aurora-mysql"
  engine_version = "11.12"
  instance_class = "db.t2.small"
  instances = {
    one = {}
    2 = {
      instance_class = "db.t2.medium"
    }
  }

  vpc_id  = "vpc-02833d0be7d51c897"
  subnets = ["subnet-01b2db30a2d5f8492", "subnet-0cd4f6d02a45666b3"]

  allowed_security_groups = ["sg-05f765d4b46673c44"]
  allowed_cidr_blocks     = ["172.31.0.0/16"]

  storage_encrypted   = true
  apply_immediately   = true
  monitoring_interval = 10

  db_parameter_group_name         = "default"
  db_cluster_parameter_group_name = "default"

  enabled_cloudwatch_logs_exports = ["general"]

  tags = {
    Environment = "dev"
    Terraform   = "true"
  }
}
