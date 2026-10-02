#!/usr/bin/env bash
# Destroy lab stack. Honors eip_keep_on_destroy when set in tfvars.
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "${ROOT}/envs/lab"

KEEP="$(terraform output -raw eip_keep_on_destroy 2>/dev/null || echo false)"

if [[ "${KEEP}" == "true" ]]; then
  echo "eip_keep_on_destroy=true — destroying all resources except EIP (state rm after)."
  # When more modules exist, destroy with -target exclusions; for EIP-only:
  echo "EIP-only stack: use 'terraform state rm module.eip.aws_eip.nat' then destroy, or leave EIP and skip destroy."
  echo "Manual: terraform state list"
  exit 0
fi

terraform destroy "$@"
