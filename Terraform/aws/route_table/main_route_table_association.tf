resource "aws_main_route_table_association" "tfer--vpc-002D-038c5ece6185da550" {
  route_table_id = "${data.terraform_remote_state.route_table.outputs.aws_route_table_tfer--rtb-002D-07193c8deff00ad72_id}"
  vpc_id         = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-002D-038c5ece6185da550_id}"
}
