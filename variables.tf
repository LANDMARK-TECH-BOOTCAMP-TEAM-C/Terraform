variable "main-region" {
  description = "The AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}

variable "ami_id" {
  description = "The AMI ID for the Terraform node"
  type        = string
  default     = "ami-06c68f701d8090592"
}

variable "instance_type" {
  description = "The instance type for the Terraform node"
  type        = string
  default     = "t2.medium"
}

variable "instance_tag" {
  description = "Subnet to create the resources in."
  type        = string
  default     = "terraform_node"
}

variable "key_name" {
  description = "The key name for the Terraform node"
  type        = string
  default     = "GroupC"
}

variable "sg_name" {
  description = "The Security Group for the Terraform node"
  type        = string
  default     = "terraform_node_sg"
}

variable "sg_description" {
  description = "The description of the Security Group for the Terraform node"
  type        = string
  default     = "This Security Group grants SSH access to the terraform node"
}

variable "vpc_id" {
  description = "The VPC ID from our account"
  type        = string
  default     = "vpc-04adac51f0f004b2e"
}

variable "sg_tags" {
  description = "This is the Security Group tag"
  type        = string
  default     = "ssh_access"
}

variable "cidr_ipv4" {
  description = "IP address for Security Group"
  type        = string
  default     = "0.0.0.0/0"
}

variable "from_port" {
  description = "Security Group from port"
  type        = string
  default     = "22"
}

variable "to_port" {
  description = "Security Group to port"
  type        = string
  default     = "22"
}

variable "ip_protocol" {
  description = "Security Group to port"
  type        = string
  default     = "tcp"
}

variable "subnet_id" {
  description = "Subnet to create the resources in."
  type        = string
  default     = "subnet-0abd24b0928bf965a"
}
