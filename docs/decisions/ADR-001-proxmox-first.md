# ADR-001: Proxmox-First Infrastructure Direction

## Status
Accepted

## Context
The repository previously centered on a bare-metal Talos/PXE provisioning path. Current goals prioritize virtualization flexibility, operational clarity, and staged modernization.

## Decision
Adopt Proxmox as the primary infrastructure foundation for current and near-term homelab operations.

## Alternatives considered
- Continue bare-metal Talos/PXE as primary path
- Mixed ad-hoc host virtualization without cluster-level direction

## Consequences
- Requires Proxmox cluster planning and host lifecycle runbooks.
- Enables cleaner layering for Kubernetes and future workloads.
- Legacy bare-metal workflows move to archive/reference status.
