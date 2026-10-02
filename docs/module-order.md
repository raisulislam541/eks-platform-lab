# Module order (Phase A)

```text
1. eip          → allocation_id, public_ip
2. vpc          → uses eip for NAT; outputs vpc_id, subnets
3. iam          → cluster_role_arn, node_role_arn  (parallel with 1–2 OK)
4. eks          → needs vpc + iam
5. node_group   → needs eks + iam + node subnets
```

## Wiring after EIP

```hcl
# envs/lab/main.tf (future)
module "vpc" {
  source                 = "../../modules/vpc"
  nat_eip_allocation_id  = module.eip.allocation_id
  # ...
}
```

Current step complete: **eip**.
