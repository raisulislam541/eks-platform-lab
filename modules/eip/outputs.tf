output "allocation_id" {
  description = "EIP allocation ID — pass to vpc module as nat_eip_allocation_id."
  value       = aws_eip.nat.id
}

output "public_ip" {
  description = "Public IPv4 address of the EIP."
  value       = aws_eip.nat.public_ip
}

output "id" {
  description = "Same as allocation_id (aws_eip id)."
  value       = aws_eip.nat.id
}

output "keep_on_destroy" {
  description = "Whether destroy scripts should preserve this EIP."
  value       = var.keep_on_destroy
}
