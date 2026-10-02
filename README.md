# eks-platform-lab

Portfolio Terraform lab: layered EKS platform (EIP → VPC → IAM → EKS → node group), inspired by how production platform modules are *ordered and wired* — **original code**, public AWS/Terraform patterns only.

## Status

| Phase | Module | Status |
|-------|--------|--------|
| A.1 | `modules/eip` | **Done** |
| A.2 | `modules/vpc` | Next |
| A.3 | `modules/iam` | Planned |
| A.4 | `modules/eks` | Planned |
| A.5 | `modules/node_group` | Planned |

## Layout

```text
modules/eip/     # Elastic IP for NAT
envs/lab/        # Single destroyable lab environment
docs/            # Module order + architecture notes
scripts/         # apply / destroy helpers
```

## Phase A.1 — EIP

```bash
cd envs/lab
cp terraform.tfvars.example terraform.tfvars   # edit region/tags
terraform init
terraform plan
terraform apply
```

Outputs to use in the **vpc** step:

- `eip_allocation_id`
- `eip_public_ip`

Destroy (EIP costs a small hourly charge when unattached):

```bash
terraform destroy
```


