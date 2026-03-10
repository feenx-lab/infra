# ADR-001: Proxmox-First Platform Direction

## Status
Accepted

## Context
The repository previously focused on bare-metal Talos/PXE workflows. The current platform direction prioritizes virtualization-first operations and documentation-driven execution.

## Decision
Adopt Proxmox as the primary infrastructure substrate for the next phase of homelab/platform development.

## Alternatives considered

- Continue bare-metal Talos/PXE as primary path
- Hybrid immediate split across bare metal and Proxmox

## Consequences

- Improves near-term flexibility for workload placement.
- Requires clear host/guest operational boundary documentation.
- Legacy bare-metal content is retained as archived reference.
