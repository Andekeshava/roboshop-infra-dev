#MongoDB is accepting connections from catalogue on port number 27017
resource "aws_vpc_security_group_ingress_rule" "mongodb_catalogue" {
    security_group_id = local.mongodb_sg_id  #destination, where you are creating the rule

    referenced_security_group_id = local.catalogue_sg_id  #source, from where the traffic coming from
    from_port = "27017"
    ip_protocol = "tcp"
    to_port = "27017"
}