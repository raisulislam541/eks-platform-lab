# eks-platform-lab

Terraform lab: EIP → VPC → IAM → EKS → node group.

## Status

| Phase | Module | Status |
|-------|--------|--------|
| A.1 | `modules/eip` | Done |
| A.2 | `modules/vpc` | Next |
| A.3–A.5 | iam / eks / node_group | Planned |

## Apply (EIP)

```bash
cd envs/lab
cp terraform.tfvars.example terraform.tfvars
terraform init && terraform plan && terraform apply
```

Outputs for the next module: `eip_allocation_id`, `eip_public_ip`.
