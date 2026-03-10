# ADR-004: TrueNAS Remains a Separate Storage Anchor

## Status
Accepted

## Context
The environment already uses a separate TrueNAS system for storage and media anchoring.

## Decision
Retain TrueNAS as an independent storage anchor rather than collapsing storage into the core compute cluster.

## Alternatives considered

- Collapse storage into Proxmox/Kubernetes nodes
- Immediate migration to a fully new storage platform

## Consequences

- Preserves existing storage investment and operational patterns.
- Requires explicit network and access boundary design.
- Keeps storage lifecycle partially decoupled from compute lifecycle.
