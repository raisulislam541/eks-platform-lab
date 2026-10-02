# Phase A — step 1 only: Elastic IP.
# Next: wire modules/vpc using module.eip.allocation_id.

module "eip" {
  source = "../../modules/eip"

  name            = "${var.project_name}-nat"
  keep_on_destroy = var.eip_keep_on_destroy

  tags = merge(var.default_tags, {
    Component = "eip"
  })
}
