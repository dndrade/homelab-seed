## 00-preflight

Fail-fast sanity checks and invariants that must hold before any other roles
are allowed to run.

This role is executed immediately after Terraform provisions a VM and before
any package installation or system mutation occurs.
