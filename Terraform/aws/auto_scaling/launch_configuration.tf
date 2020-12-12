resource "aws_launch_configuration" "tfer--www" {
  associate_public_ip_address = "true"

  ebs_block_device {
    delete_on_termination = "true"
    device_name           = "/dev/sdb"
    encrypted             = "false"
    iops                  = "0"
    no_device             = "true"
    volume_size           = "0"
  }

  ebs_block_device {
    delete_on_termination = "true"
    device_name           = "/dev/sdc"
    encrypted             = "false"
    iops                  = "0"
    no_device             = "true"
    volume_size           = "0"
  }

  ebs_optimized     = "false"
  enable_monitoring = "false"
  image_id          = "ami-0a91cd140a1fc148a"
  instance_type     = "t2.micro"
  key_name          = "495"
  name              = "www"

  root_block_device {
    delete_on_termination = "true"
    encrypted             = "false"
    iops                  = "0"
    volume_size           = "8"
    volume_type           = "gp2"
  }

  security_groups  = ["${data.terraform_remote_state.sg.outputs.aws_security_group_tfer--www-002D-instance_sg-002D-03a2ba900329d979f_id}"]
  user_data_base64 = "IyEvYmluL2Jhc2gKc3VkbyBhcHQtZ2V0IHVwZGF0ZQpzdWRvIGFwdC1nZXQgdXBncmFkZSAteQpzdWRvIGFwdC1nZXQgaW5zdGFsbCBuZ2lueCAteQpzdWRvIHN5c3RlbWN0bCBlbmFibGUgbmdpbngKc3VkbyBzeXN0ZW1jdGwgc3RhcnQgbmdpbng="
}
