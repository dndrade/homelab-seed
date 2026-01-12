# Environments

This defines **what exists**.

Each subfolder represents a concrete environment (core, staging, production, etc.)
and contains the Terraform entrypoints for real machines.

An environment:

- chooses a machine flavor
- chooses a provider
- wires outputs (IP, inventory, metadata)

Nothing provider-specific lives here.
