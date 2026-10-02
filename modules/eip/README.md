# Module: `eip`

Phase A step 1 of `eks-platform-lab`.

Allocates a **VPC-scoped Elastic IP** used later by the `vpc` module for a NAT Gateway so private subnets (EKS nodes) have stable outbound internet access.

## Why this exists first

```text
eip  →  vpc (NAT)  →  eks + node_group
```

Without a dedicated EIP, NAT gets a new public IP on every recreate, which breaks IP allow-lists and makes teardown/recreate noisier.

## Inputs

| Name | Type | Default | Description |
|------|------|---------|-------------|
| `name` | `string` | — | Name tag |
| `tags` | `map(string)` | `{}` | Extra tags |
| `keep_on_destroy` | `bool` | `false` | Hint for destroy scripts to leave the EIP |

## Outputs (contract for `vpc`)

| Name | Use |
|------|-----|
| `allocation_id` | `aws_nat_gateway.allocation_id` |
| `public_ip` | Docs / allow-lists |
| `keep_on_destroy` | Destroy orchestration |

## Apply (from `envs/lab`)

```bash
cd envs/lab
terraform init
terraform plan
terraform apply
```

## Notes

- Original portfolio code — not copied from any employer module.
- Does not associate the EIP; association happens in `vpc` via NAT Gateway.
