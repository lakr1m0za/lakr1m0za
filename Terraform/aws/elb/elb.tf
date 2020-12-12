resource "aws_elb" "tfer--www-002D-elb" {
  availability_zones          = ["us-east-2c", "us-east-2a", "us-east-2b"]
  connection_draining         = "true"
  connection_draining_timeout = "300"
  cross_zone_load_balancing   = "true"

  health_check {
    healthy_threshold   = "10"
    interval            = "30"
    target              = "HTTP:80/index.nginx-debian.html"
    timeout             = "5"
    unhealthy_threshold = "2"
  }

  idle_timeout = "60"
  internal     = "false"

  listener {
    instance_port     = "80"
    instance_protocol = "http"
    lb_port           = "80"
    lb_protocol       = "http"
  }

  name                  = "www-elb"
  security_groups       = ["${data.terraform_remote_state.sg.outputs.aws_security_group_tfer--www-002D-instance_sg-002D-03a2ba900329d979f_id}"]
  source_security_group = "906325319864/www-instance"
  subnets               = ["${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-002D-0334feae36a806029_id}", "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-002D-0d3d97f861a78db8e_id}", "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-002D-0ee0098f3f5daaf25_id}"]
}
