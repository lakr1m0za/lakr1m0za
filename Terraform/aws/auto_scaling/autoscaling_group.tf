resource "aws_autoscaling_group" "tfer--www-002D-asg" {
  availability_zones        = ["us-east-2c", "us-east-2a", "us-east-2b"]
  capacity_rebalance        = "false"
  default_cooldown          = "300"
  desired_capacity          = "2"
  force_delete              = "false"
  health_check_grace_period = "300"
  health_check_type         = "EC2"
  launch_configuration      = "${aws_launch_configuration.tfer--www.name}"
  load_balancers            = ["www-elb"]
  max_instance_lifetime     = "0"
  max_size                  = "4"
  metrics_granularity       = "1Minute"
  min_size                  = "1"
  name                      = "www-asg"
  protect_from_scale_in     = "false"
  service_linked_role_arn   = "arn:aws:iam::906325319864:role/aws-service-role/autoscaling.amazonaws.com/AWSServiceRoleForAutoScaling"
  vpc_zone_identifier       = ["${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-002D-0ee0098f3f5daaf25_id}", "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-002D-0334feae36a806029_id}", "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-002D-0d3d97f861a78db8e_id}"]
  wait_for_capacity_timeout = "10m"
}
