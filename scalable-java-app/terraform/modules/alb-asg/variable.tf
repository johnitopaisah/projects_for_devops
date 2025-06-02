variable "tags" {
  default     = {}
  type        = map(string)
  description = "Extra tags to attach to the resources"
}

variable "ingress_alb_from_port" {
  description = "Ingress alb from port"
  type        = number
}

variable "ingress_alb_to_port" {
  description = "Ingress alb to port"
  type        = number
}

variable "ingress_alb_protocol" {
  description = "Ingress alb protocol"
  type        = string
}

variable "ingress_alb_cidr_blocks" {
  description = "List of starting ports fro cidr ingress rules of the security group."
  type        = list(string)
}

variable "egress_alb_from_port" {
  description = "Egress alb from port"
  type        = number
}

variable "egress_alb_to_port" {
  description = "Egress alb to port"
  type        = number
}

variable "egress_alb_protocol" {
  description = "Egress alb protocol"
  type        = string
}

variable "egress_alb_cidr_blocks" {
  description = "List of starting ports fro cidr egress rules of the security group."
  type        = list(string)
}

variable "loadbalancer_type" {
  description = "Load balancer type"
  type        = string
}

variable "ami_id" {
  description = "The ID of the Amazon Machine Image (AMI) to use for the EC2 intance"
}

variable "internal" {
  description = "Whethe theload balancer is internal or not"
  type        = bool
}

variable "instance_type" {
  description = "The ID of the Amazon Machine Image (AMI) to use for ASG"
}

variable "key_name" {
  description = "The name of the EC2 key pair to use for the instances"
}

variable "vpc_id" {
  description = "A list of VPC to use for the resources."
}

variable "subnets" {
  description = "A list of subnet IDs to use for the resources."
  type        = list(string)
}

variable "target_group_port" {
  description = "Target group port."
  type        = number
}

variable "target_group_protocol" {
  description = "The Target Group protocol"
  type        = string
}

variable "target_type" {
  description = "The Target type"
  type        = string
}

variable "loadbalancer_algorithm" {
  description = "Specify the load balancing algorithm type"
  type        = string
}

variable "health_check_path" {
  description = "Health cheak path"
  type        = string
}

variable "health_check_poth" {
  description = "Health cheak port"
  type        = number
}

variable "health_check_protocol" {
  description = "Health cheak protocol"
  type        = string
}

variable "health_check_interval" {
  description = "Health cheak interval"
  type        = number
}

variable "health_check_timeout" {
  description = "Health cheak timeout"
  type        = number
}

variable "health_check_healthy_threshold" {
  description = "Health cheak healthy threshold"
  type        = number
}

variable "health_check_unhealthy_threshold" {
  description = "Health cheak unhealthy threshold"
  type        = number
}

variable "ingress_asg_cidr_from_port" {
  description = "Ingress ASG from port"
  type        = number
}

variable "ingress_asg_cidr_to_port" {
  description = "Ingress ASG to port"
  type        = number
}

variable "ingress_asg_cidr_protocol" {
  description = "Ingress ASG protocol"
  type        = string
}

variable "ingress_asg_cidr_blocks" {
  description = "List of starting ports fro cidr ingress rules of the security group."
  type        = list(string)
}

variable "ingress_asg_sg_from_port" {
  description = "Ingress ASG from port"
  type        = number
}

variable "ingress_asg_sg_to_port" {
  description = "Ingress ASG to port"
  type        = number
}

variable "ingress_asg_sg_protocol" {
  description = "Ingress ASG protocol"
  type        = string
}

variable "egress_asg_from_port" {
  description = "Egress ASG from port"
  type        = number
}

variable "egress_asg_to_port" {
  description = "Egress ASG to port"
  type        = number
}

variable "egress_asg_protocol" {
  description = "Egress ASG protocol"
  type        = string
}

variable "egress_asg_cidr_blocks" {
  description = "List of starting ports fro cidr egress rules of the security group."
  type        = list(string)
}

variable "public_access" {
  description = "Whethe the instance is public or not"
  type        = bool
}

variable "max_size" {
  description = "The maximum size of the autoscale group"
  type        = number
}

variable "min_size" {
  description = "The minimum size of the autoscale group"
  type        = number
}

variable "desired_capacity" {
  description = "The number of Amazon EC2 instances that should be running in the group"
  type        = number
}

variable "listener_port" {
  description = "Listener port"
  type        = number
}

variable "listener_protocol" {
  description = "Listener protocol"
  type        = string
}

variable "user_data" {
  description = "The user data to provide when launching the instance"
  type        = string
}

variable "listener_type" {
  description = "Listener type"
  type        = string
}

variable "instance_warmup_time" {
  description = "Time required to warm up a new instance"
  type        = number
}

variable "target_value" {
  description = "Threashod value of asg to start scaling"
  type        = number
}

variable "environment" {
  description = "The environment for the resources."
  type        = string
}

variable "owner" {
  description = "The owner for the resources."
  type        = string
}

variable "application" {
  description = "Name of the application."
  type        = string
}

variable "cost_center" {
  description = "The cost center for the resources."
  type        = string
}