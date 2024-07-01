
resource "aws_instance" "terraform_node" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name
  vpc_security_group_ids = aws_security_group.terraform_node_sg.id
  subnet_id     = var.subnet_id
  user_data     = file("${path.module}/userdata.sh")

  tags = {
    Name = var.instance_tag
  }
}

resource "aws_security_group" "terraform_node_sg" {
  name        = var.sg_name
  description = var.sg_description
  vpc_id      = var.vpc_id

  tags = {
    Name = var.sg_tags
  }
}

resource "aws_vpc_security_group_ingress_rule" "ssh_access" {
  security_group_id = aws_security_group.terraform_node_sg.id
  cidr_ipv4         = var.cidr_ipv4
  from_port         = var.from_port
  ip_protocol       = var.ip_protocol
  to_port           = var.to_port
}
