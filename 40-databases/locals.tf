# locals {
#     ami_id = data.aws_ami.joindevops.id
#     mongodb_sg_id = data.aws_ssm_parameter.mongodb_sg_id.value
#     database_subnet_ids = split(",", data.aws_ssm_parameter.database_subnet_ids.value)[0]
#     common_tags = {
#         project = var.project
#         environment = var.environment
#         terraform = true
#         Name = "${var.project}-${var.environment}-mongodb"
#     }
# }

locals {
  ami_id              = data.aws_ami.joindevops.id
  mongodb_sg_id       = data.aws_ssm_parameter.mongodb_subnet_id.value
  database_subnet_ids = split(",", data.aws_ssm_parameter.database_subnet_ids.value)[0]

  common_tags = {
    project     = var.project
    environment = var.environment
    terraform   = true
    Name        = "${var.project}-${var.environment}-mongodb"
  }
}