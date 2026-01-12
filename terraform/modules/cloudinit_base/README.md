# Cloud-init Base Module

Defines shared cloud-init logic used across providers.

Intended responsibilities:

- base user creation
- SSH hardening
- initial package bootstrap

Provider adapters may extend or override this behavior.
