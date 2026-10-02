# Module order (Phase A)

```text
1. eip        → allocation_id, public_ip
2. vpc        → NAT uses eip; vpc_id, subnets
3. iam        → cluster_role_arn, node_role_arn
4. eks        → needs vpc + iam
5. node_group → needs eks + iam + node subnets
```
