resource "aws_route_table_association" "tfer--subnet-002D-0334feae36a806029" {
  route_table_id = "${data.terraform_remote_state.route_table.outputs.aws_route_table_tfer--rtb-002D-07193c8deff00ad72_id}"
  subnet_id      = "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-002D-0334feae36a806029_id}"
}

resource "aws_route_table_association" "tfer--subnet-002D-0d3d97f861a78db8e" {
  route_table_id = "${data.terraform_remote_state.route_table.outputs.aws_route_table_tfer--rtb-002D-07193c8deff00ad72_id}"
  subnet_id      = "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-002D-0d3d97f861a78db8e_id}"
}

resource "aws_route_table_association" "tfer--subnet-002D-0ee0098f3f5daaf25" {
  route_table_id = "${data.terraform_remote_state.route_table.outputs.aws_route_table_tfer--rtb-002D-07193c8deff00ad72_id}"
  subnet_id      = "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-002D-0ee0098f3f5daaf25_id}"
}
