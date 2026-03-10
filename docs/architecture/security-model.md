# Security Model (Baseline)

## Principles

- Least privilege for identities, credentials, and network access.
- Secret hygiene: no live secrets in repo.
- Explicit trust boundaries between host, cluster, storage, and edge access.

## Baseline controls

- Git-based change review via pull requests.
- ADR-backed architectural changes.
- Segmented networks (details pending).
- Prefer short-lived credentials and secure secret delivery patterns.

## TODOs

- TODO: Define secret management strategy for Proxmox/Kubernetes/Argo CD.
- TODO: Define identity provider and RBAC model.
- TODO: Define backup encryption and key handling practices.
- TODO: Define minimum logging/auditing standards.
