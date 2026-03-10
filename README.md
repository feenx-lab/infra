# Homelab Infrastructure (Documentation-First)

This repository is the planning, architecture, and operations source of truth for a homelab platform pivoting to a **Proxmox-first** model with:

- Virtualized Kubernetes running inside Proxmox
- Argo CD for GitOps
- TrueNAS as a separate storage/media anchor
- A documented path toward future AI/agent platform capabilities

## Current Direction

The prior bare-metal Talos/PXE direction is now treated as legacy reference material. The active path is:

1. Stabilize documentation and inventory
2. Build/validate Proxmox platform foundations
3. Stand up Kubernetes in VMs on Proxmox
4. Bootstrap Argo CD and GitOps workflows
5. Incrementally migrate/support media and future AI workloads

## Repository Structure

- `docs/vision/` - mission, goals, and operating principles
- `docs/inventory/` - hardware, network, and service inventories
- `docs/architecture/` - target architecture and strategy documents
- `docs/decisions/` - ADRs (architecture decision records)
- `docs/runbooks/` - operational bootstrap and procedures
- `docs/roadmap/` - milestones, backlog, and current phase
- `docs/archive/` - preserved legacy material
- `proxmox/` - Proxmox-specific implementation notes/artifacts
- `kubernetes/` - Kubernetes platform design/implementation notes
- `argocd/` - Argo CD bootstrap and app-of-apps patterns
- `automation/` - automation workflow notes/scripts
- `ai/` - future AI/agent platform planning
- `scripts/` - helper scripts used by docs/runbooks
- `.github/` - issue and PR templates for GitHub-native planning

## Current Phase

See `docs/roadmap/current-phase.md` for the active phase and near-term focus.

## How Decisions Are Recorded

Architectural decisions are captured as ADRs in `docs/decisions/` using a consistent format:

- Title
- Status
- Context
- Decision
- Alternatives considered
- Consequences

## How Work Is Tracked

- Use GitHub Issues with templates in `.github/ISSUE_TEMPLATE/`
- Use PR review for implementation changes
- Keep roadmap and backlog updated under `docs/roadmap/`

## Start Here

1. `docs/vision/homelab-vision.md`
2. `docs/inventory/hardware-inventory.md`
3. `docs/architecture/target-architecture.md`
4. `docs/decisions/ADR-001-proxmox-first.md`
5. `docs/runbooks/bootstrap-sequence.md`
