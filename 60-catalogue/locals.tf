locals {
  catalogue_sg_id      = data.aws_ssm_parameter.catalogue_sg_id.value
  private_subnet_ids = split(",", data.aws_ssm_parameter.private_subnet_ids.value)[0]
  ami_id = data.aws_ami.joindevops
  common_name = "${var.project}-${var.environment}"

  common_tags = {
    project     = var.project
    environment = var.environment
    terraform   = true
    Name        = "${var.project}-${var.environment}-mongodb"
  }
  account_id = data.aws_caller_identity.current.account_id
}