# Network
region = "us-west-2"
vpc_id = "vpc-04dde7b634fc15e47"
subnets = [
  "subnet-05ea0b5e6e698a015",
  "subnet-0e298f2d97d8a8437",
  "subnet-0f0f77996c478e974"
]

# ALB-ASG Configuration
ingress_alb_from_port = 80
ingress_alb_to_port = 80
ingress_alb_protocol = "HTTP"
ingress_alb_cidr_blocks = ["0.0.0.0/0"]
egress_alb_from_port = 0
egress_alb_to_port = 0
egress_alb_protocol = "-1"  # All traffic
egress_alb_cidr_blocks = ["0.0.0.0/0"]

internal = false
load_balancer_type = "application"

target_group_port = 8080
target_group_protocol = "HTTP"
target_type = "instance"
load_balancer_algorithm = "round_robin"
health_check_path = "/"
health_check_port = 8080
health_check_interval = 30
health_check_timeout = 5
health_check_protocol = "HTTP"
health_check_healthy_threshold = 2
health_check_unhealthy_threshold = 2

# Instance Configuration
ingress_asg_from_port = 22
ingress_asg_to_port = 22
ingress_asg_protocol = "tcp"
ingress_asg_cidr_blocks = ["0.0.0.0/0"]
ingress_asg_sg_from_port = 8080
ingress_asg_sg_to_port = 8080
ingress_asg_sg_protocol = "tcp"
egress_asg_from_port = 0
egress_asg_to_port = 0
egress_asg_protocol = "-1"  # All traffic
egress_asg_cidr_blocks = ["0.0.0.0/0"]

# Auto Scaling Group Configuration
max_size = 3
min_size = 1
desired_capacity = 2

# Listener Configuration
listener_port = 80
listener_protocol = "HTTP"
listener_type = "forward"

# Launch Template Configuration
ami_id = "ami-0e60009ccef75a369"  # Example AMI ID, replace with your own
instance_type = "t2.micro"
key_name = "petclinic-key-pair"  # Replace with your key pair name
user_name = <<-EOF
#!/bin/bash
bash /home/ubuntu/start.sh
EOF
public_access = true
instance_warmup_time = 30 # 30 seconds
target_value = 50.0

owner             = "johniisah"
environment       = "dev"
cost_center       = "johniisah-company"
application       = "petclinic"