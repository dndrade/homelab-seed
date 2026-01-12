# Overview

> Its role is to establish a basic **reproducible core host** that other systems can depend on.
> 
> It automates the creation, configuration, and management of a secure “base of operations” VM.

## Layers

- **Terraform**: define and create infrastructure
- **Ansible**: converge the host into a known state
- **Docker Compose**: run long-lived services

Each layer is explicit and replaceable.

> This repo is intentionally small and conservative.
