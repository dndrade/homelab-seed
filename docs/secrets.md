# Secrets

This repository uses **SOPS + age** for secret management.

There is no Vault, no plaintext secrets, and no fallback.

## Where secrets live

Encrypted secrets are committed to git:

```text
secrets/*.sops.yaml
```

Only encrypted files are allowed.

## Editing secrets

Always use SOPS editor mode:

```bash
sops secrets/common.sops.yaml
```

This:

* decrypts in memory
* opens an editor
* re-encrypts on save

If `cat` shows readable values, something is wrong.

## Keys

Decryption requires an age private key, stored locally:

```text
~/.config/sops/age/
```

This file must:

* never be committed
* never be shared casually

If the key is lost, the secrets are unrecoverable.
