# Homelab Vision

## Purpose
Build a resilient, maintainable homelab platform that prioritizes clarity, repeatability, and gradual evolution over premature complexity.

## Direction

- Proxmox-first infrastructure as the substrate
- Kubernetes initially as virtualized workloads on Proxmox
- Argo CD as the GitOps control plane
- TrueNAS retained as a separate storage/media anchor
- Future expansion for local AI and agentic development workflows

## Non-goals (for now)

- Immediate migration to bare-metal Kubernetes
- Full redesign of media architecture before documenting current state
- Premature optimization of every operational workflow

## Guiding principles

1. Documentation first, automation second, scale third.
2. Record decisions as ADRs before deep implementation.
3. Prefer explicit TODOs over guessed technical details.
4. Keep security posture and secret hygiene as baseline requirements.
