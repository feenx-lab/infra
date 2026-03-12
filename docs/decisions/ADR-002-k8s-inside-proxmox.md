# ADR-002: Kubernetes Runs Inside Proxmox VMs

## Status
Accepted

## Context
Kubernetes remains a core target platform, but direct bare-metal coupling increases platform migration friction and can complicate host-level changes.

## Decision
Run Kubernetes as virtualized nodes inside Proxmox rather than as the direct bare-metal base layer.

## Alternatives considered
- Bare-metal Kubernetes on the MS-A2 nodes
- Delay Kubernetes entirely until later platform phases

## Consequences
- Adds one extra abstraction layer (VMs) to manage.
- Improves host/platform isolation and recovery flexibility.
- Requires clear VM sizing/network/storage decisions (tracked as TODOs).
