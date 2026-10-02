output "eip_allocation_id" {
  description = "Pass to vpc module as nat_eip_allocation_id (next step)."
  value       = module.eip.allocation_id
}

output "eip_public_ip" {
  description = "Public IP reserved for NAT egress."
  value       = module.eip.public_ip
}

output "eip_keep_on_destroy" {
  value = module.eip.keep_on_destroy
}
