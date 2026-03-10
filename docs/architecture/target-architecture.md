# Target Architecture (Working Draft)

## High-level model

1. Proxmox cluster provides virtualization and lifecycle management.
2. Kubernetes runs inside Proxmox-hosted VMs.
3. Argo CD manages Kubernetes desired state from Git.
4. TrueNAS remains a separate storage/media anchor.
5. Media platform remains logically separate from core platform control services.

## Design constraints

- Prefer incremental migration over all-at-once rebuilds.
- Keep storage and media concerns decoupled from cluster control plane.
- Use documentation and ADRs to reduce architectural drift.

## TODOs

- TODO: Define availability goals for each platform layer.
- TODO: Define backup and disaster recovery boundaries.
- TODO: Define observability baseline (metrics/logs/traces/events).
