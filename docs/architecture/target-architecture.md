# Target Architecture (Planned)

## High-Level Direction

1. **Proxmox-first virtualization layer** on the three MS-A2 hosts
2. **Virtualized Kubernetes cluster** hosted in Proxmox VMs
3. **Argo CD GitOps control plane** for Kubernetes applications
4. **TrueNAS as separate storage anchor** for shared storage/media
5. **Media platform as separate concern** from core platform modernization
6. **Future AI/agent capabilities** built after platform foundations stabilize

## Logical Layers

- **Layer 1: Physical + network** (power, switching, routing)
- **Layer 2: Virtualization** (Proxmox cluster and host operations)
- **Layer 3: Container platform** (Kubernetes in VMs)
- **Layer 4: GitOps & app delivery** (Argo CD)
- **Layer 5: Workload domains** (core apps, media, future AI)

## TODO

- TODO: Define initial control-plane and worker VM sizing assumptions.
- TODO: Define storage class strategy for Kubernetes workloads.
- TODO: Define ingress/DNS/TLS standards for platform services.
