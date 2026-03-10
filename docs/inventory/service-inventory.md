# Service Inventory

## Current Service Domains

1. Core platform services (in transition)
2. Media platform services (currently Docker-based inside Proxmox VM)

## Current State Summary

- Repository is pivoting from older bare-metal Talos/PXE workflows to Proxmox-first virtualization.
- Kubernetes is planned to run inside Proxmox VMs.
- Argo CD is the preferred GitOps controller for the next platform iteration.

## TODO

- TODO: Enumerate currently active non-media infrastructure services and ownership.
- TODO: Record service criticality tiers and recovery priorities.
- TODO: Add external dependency register (DNS provider, tunnel provider, etc.) at a non-sensitive level.
