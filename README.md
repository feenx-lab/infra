# Homelab Infrastructure (Documentation-First)

This repository is the planning, architecture, and operations source of truth for a homelab platform pivoting to a **Proxmox-first** model with:

- Virtualized Kubernetes running inside Proxmox
- Argo CD for GitOps
- TrueNAS as a separate storage/media anchor
- A documented path toward future AI/agent platform capabilities

GitHub issues, ADRs, roadmap docs, and pull requests are the primary system of record for planning and execution.

## Current Direction

The prior bare-metal Talos/PXE direction is now treated as legacy reference material. The active path is:

1. Stabilize documentation and inventory
2. Build/validate Proxmox platform foundations
3. Stand up Kubernetes in VMs on Proxmox
4. Bootstrap Argo CD and GitOps workflows
5. Incrementally migrate/support media and future AI workloads

## Where to Start This Week

If you are picking work up now, start with these in order:

1. Finalize factual inventory values:
   - `docs/inventory/hardware-inventory.md`
   - `docs/inventory/network-inventory.md`
2. Confirm architecture intent and boundaries:
   - `docs/architecture/target-architecture.md`
3. Execute current phase tasks:
   - `docs/roadmap/current-phase.md`
4. Pull from prioritized task list:
   - `docs/roadmap/backlog.md`

This keeps the current phase (Foundation/Documentation Restructuring) tightly connected to the next milestone (Network Core).

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

## Current Phase and Next Milestone

- Current phase: **Foundation / Documentation Restructuring** (`docs/roadmap/current-phase.md`)
- Next milestone: **M1 - Network Core** (`docs/roadmap/milestones.md`)

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

## Start Here (Core Reading Path)

1. `docs/vision/homelab-vision.md`
2. `docs/architecture/target-architecture.md`
3. `docs/decisions/ADR-001-proxmox-first.md`
4. `docs/roadmap/current-phase.md`
5. `docs/roadmap/backlog.md`

## Legacy Reference

The old bare-metal Talos/PXE code and docs are preserved under:

- `docs/archive/legacy-baremetal-talos-pxe/`

This archive is historical/reference only and not the active platform direction.
