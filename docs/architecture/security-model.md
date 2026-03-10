# Security Model (Initial)

## Principles

- Least privilege access for platform administration
- Separation of management, data, and workload planes where possible
- Secrets managed outside plaintext repo content
- Change tracking through PR review and ADR records

## Controls (Planned)

- GitHub PR-based review for platform changes
- Explicit ADR decisions for major architectural/security tradeoffs
- Redaction of sensitive environment details in shared docs

## TODO

- TODO: Define identity and access model for Proxmox/TrueNAS/Kubernetes.
- TODO: Define secrets management pattern for GitOps workflows.
- TODO: Define baseline backup, restore, and incident response procedure.
