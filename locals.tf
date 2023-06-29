locals {
  group_details = {
    "http rule" = {
      port = 80
      cidr_blocks = ["10.0.0.0/16"],
    }
    "ssh rule" = {
      port = 22
      cidr_blocks = ["0.0.0.0/0"],
    }
  }
}