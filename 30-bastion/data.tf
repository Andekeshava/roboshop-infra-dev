data "aws_ami" "joindevops" {
  most_recent = true
  owners      = ["298363283580"]

  filter {
    name   = "name"
    values = ["Redhat-9-DevOps-Practice"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  filter {
    name   = "state"
    values = ["available"]
  }
}

data "aws_ssm_parameter" "public_subnet_ids" {
    name = "/${var.project}/${var.environment}/public_subnet_ids"
}

data "aws_ssm_parameter" "bastion_sg_id" {
    name = "/${var.project}/${var.environment}/bastion_sg_id"
}