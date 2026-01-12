<!-- Logo -->
<div align="center">
  <img src="https://www.svgrepo.com/show/470662/network.svg" width="150" alt="homelab-seed logo">

<!-- Menu -->

&ensp;[<kbd> <br> Overview <br> </kbd>](#overview)&ensp;
&ensp;[<kbd> <br> Usage <br> </kbd>](#usage)&ensp;
&ensp;[<kbd> <br> Development <br> </kbd>](docs/development.md)&ensp;
&ensp;[<kbd> <br> References <br> </kbd>](#references)&ensp;
<br>

</div>

---

## Overview

> **homelab-seed** is a minimal, opinionated **bootstrap repository** for a core homelab or personal infrastructure host.

## Usage

### 1. Enter the dev environment

```bash
devbox shell
````

### 2. Discover available actions

```bash
task --list
```

### 3. Deploy

```bash
task deploy
```

All orchestration is handled through **Taskfiles** at:

* repo root
* `ansible/`
* `terraform/`

## Status

* ✅ deploys infrastructure via Terraform
* ✅ converges hosts using Ansible
* ✅ manages secrets with SOPS + age

## References

* [Devbox](https://www.jetify.com/devbox) — Reproducible per-project development environments
* [Task (go-task)](https://taskfile.dev) — Task runner used as the primary interface
* [Ansible](https://www.ansible.com) — Host configuration and service orchestration
* [Terraform](https://www.terraform.io) — Infrastructure provisioning and state management
* [SOPS](https://github.com/getsops/sops) — Secrets encryption for git repositories
* [age](https://age-encryption.org) — Modern, simple encryption used by SOPS
