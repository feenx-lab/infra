# ADR-004: TrueNAS Remains a Separate Storage Anchor

## Status
Accepted

## Context
Storage/media needs are currently anchored to a separate TrueNAS system. Platform direction requires clear separation between compute virtualization and storage anchor responsibilities.

## Decision
Keep TrueNAS as a separate system of record for storage/media responsibilities rather than folding storage into Proxmox hosts.

## Alternatives considered
- Converged storage directly on Proxmox nodes
- Immediate redesign of storage around a new distributed stack

## Consequences
- Requires explicit network and mount strategy between Proxmox/Kubernetes and TrueNAS.
- Preserves current media data workflows while core platform evolves.
