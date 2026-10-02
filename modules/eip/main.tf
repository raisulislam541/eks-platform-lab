# Phase A — Elastic IP for NAT Gateway egress.
# Next consumer: modules/vpc (allocation_id → aws_nat_gateway).

resource "aws_eip" "nat" {
  domain = "vpc"

  tags = merge(
    var.tags,
    {
      Name    = var.name
      Purpose = "nat-gateway"
    }
  )
}
