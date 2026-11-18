module "vpc" {
  source = "../../terraform-aws-vpc"
  #source = "git::https://github.com/Andekeshava/roboshop-infra-dev.git?ref=main"
  project = var.project
  environment = var.environment
}
