resource "aws_security_group" "alb_sg" {
  name_prefix = "${var.environment}-${var.application}"

  ingress {
    from_port = var.ingress_alb_from_port
    to_port   = var.ingress_alb_to_port
    protocol  = var.ingress_alb_protocol
    cidr_blocks = var.ingress_alb_cidr_blocks
  }

  egress = {
    from_port = var.egress_alb_from_port
    to_port   = var.egress_alb_to_port
    protocol  = var.egress_alb_protocol
    cidr_blocks = var.egress_alb_cidr_blocks 
  }

  tags = merge(
    {
      Name        = "${var.environment}-${var.application}-alb-sg",
      Environment = var.environment,
      Owner       = var.owner,
      CostCenter  = var.cost_center,
      Application = var.application,
    },
    var.tags
  )
}

resource "aws_alb" "application_load_balancer" {
  name                = "${var.environment}-${var.application}-alb"
  internal            = var.internal
  load_balancer_type  = var.loadbalancer_type

  subnets             = var.subnets
  security_groups     = [aws_security_group.alb_sg.id]

  tags = merge(
    {
      Name        = "${var.environment}-${var.application}-alb",
      Environment = var.environment,
      Owner       = var.owner,
      CostCenter  = var.cost_center,
      Application = var.application,
    },
    var.tags
  )
}

resource "aws_alb_target_group" "petclinic" {
  name_prefix      = var.health_check_path
  port             = var.health_check_poth
  protocol         = var.health_check_protocol
  vpc_id           = var.vpc_id
  target_type      = var.target_type

  health_check {
    healthy_threshold   = var.health_check_healthy_threshold
    unhealthy_threshold = var.health_check_unhealthy_threshold
    timeout             = var.health_check_timeout
    interval            = var.health_check_interval
    path                = var.health_check_path
    port                = var.health_check_poth
    protocol            = var.health_check_protocol
  }

  load_balancing_algorithm_type = var.loadbalancer_algorithm

  tags = merge(
    {
      Name        = "${var.environment}-${var.application}-tg",
      Environment = var.environment,
      Owner       = var.owner,
      CostCenter  = var.cost_center,
      Application = var.application,
    },
    var.tags
  )
}

resource "aws_alb_listener" "application_listener" {
  load_balancer_arn = aws_alb.application_load_balancer.arn
  port              = var.listener_port
  protocol          = var.listener_protocol

  default_action {
    type             = var.listener_type
    target_group_arn = aws_alb_target_group.petclinic.arn
  }
}