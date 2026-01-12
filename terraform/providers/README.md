# Racknerd

- Racknerd VMs are assumed to already exist
- Terraform does **not** create, modify, or destroy Racknerd resources

Racknerd credentials (API key / hash) are stored in GitHub Secrets
and are **not consumed by Terraform yet**.

## When this directory becomes active

This directory should contain executable Terraform or scripts **only**
when one of the following becomes true:

- Racknerd releases an official Terraform provider
- A stable internal provider or API wrapper is implemented
- Terraform is explicitly extended to manage Racknerd infrastructure

Until then, this directory is doc-only.
