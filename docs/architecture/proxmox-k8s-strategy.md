# Proxmox + Kubernetes Strategy

## Strategy Statement

Use Proxmox as the primary platform substrate, then deploy Kubernetes as virtualized nodes to improve flexibility, isolation, and recoverability compared to direct bare-metal coupling.

## Why This Approach

- Faster platform iteration via VM-level change management
- Cleaner separation between host lifecycle and Kubernetes lifecycle
- Easier experimentation for future platform domains

## Proposed Sequence

1. Validate Proxmox host readiness and cluster plan.
2. Define Kubernetes VM topology and bootstrap path.
3. Bring up a baseline Kubernetes cluster in Proxmox.
4. Bootstrap Argo CD and transition app delivery to GitOps.

## TODO

- TODO: Select Kubernetes provisioning method (e.g., kubeadm, Talos-in-VM, other).
- TODO: Define VM networking mode(s) and failure domain expectations.
- TODO: Document etcd/control-plane resilience targets.
