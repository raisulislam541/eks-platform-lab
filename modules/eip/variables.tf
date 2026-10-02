variable "name" {
  description = "Name tag for the Elastic IP (used by NAT Gateway in the vpc module)."
  type        = string
}

variable "tags" {
  description = "Additional tags merged onto the EIP."
  type        = map(string)
  default     = {}
}

variable "keep_on_destroy" {
  description = <<-EOT
    When true, documents intent to preserve the EIP across lab teardown
    (stable egress IP). Terraform cannot set lifecycle.prevent_destroy from a
    variable; the env destroy script honors this by skipping EIP destroy
    and optionally removing the resource from state instead.
  EOT
  type        = bool
  default     = false
}
