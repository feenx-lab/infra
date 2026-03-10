# Proxmox + Kubernetes Strategy

## Strategy statement

Build and stabilize Proxmox first, then deploy an initial Kubernetes cluster as VMs to accelerate platform learning while retaining infrastructure flexibility.

## Why this approach

- Faster iteration than immediate bare-metal Kubernetes rebuild.
- Better isolation between host virtualization and guest orchestration concerns.
- Easier phased migration of workloads and operational practices.

## Implementation themes

- Standardized VM templates for Kubernetes nodes.
- Repeatable cluster bootstrap process (document first, automate next).
- Clear separation of management, workload, and storage networking (details TODO).

## TODOs

- TODO: Define Kubernetes distro selection criteria.
- TODO: Define control-plane and worker VM sizing profile.
- TODO: Define day-2 operations model (upgrade cadence, patch windows).
