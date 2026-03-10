# Homelab Infrastructure (Documentation-First)

This repository is the planning and execution hub for a homelab/platform build centered on:

- **Proxmox-first virtualization**
- **Virtualized Kubernetes inside Proxmox**
- **Argo CD for GitOps**
- **TrueNAS as a separate storage anchor**
- A path toward **self-hosted AI/agent platform capabilities**

The previous bare-metal Talos/PXE implementation is preserved in `docs/archive/legacy-baremetal-talos-pxe/` for historical reference and is **not** the current primary direction.

## Current architecture direction

- Main compute: 3x Minisforum MS-A2 (96 GB RAM each, 10GbE)
- Core platform direction: Proxmox cluster first, then Kubernetes as VMs
- GitOps direction: Argo CD preferred over Flux
- Storage: separate TrueNAS system
- Network foundation: Ubiquiti stack (Cloud Gateway Fiber, Pro XG 8 PoE, Lite 16 PoE)

Where details are not finalized, this repository uses explicit `TODO` markers rather than assumptions.

## Repository structure

```text
docs/
  vision/         # North-star goals and intent
  inventory/      # Hardware, network, and service inventory
  architecture/   # Target architecture and security/network models
  decisions/      # ADRs (architecture decision records)
  runbooks/       # Operational procedures
  roadmap/        # Milestones, backlog, current phase
  archive/        # Legacy direction and historical references
proxmox/          # Proxmox planning/implementation docs and artifacts
kubernetes/       # Kubernetes cluster design and implementation docs
argocd/           # Argo CD bootstrap and app-of-apps patterns
automation/       # Automation plans/scripts conventions
ai/               # Future AI platform direction and experiments
scripts/          # Safe utility scripts (no secrets)
.github/          # GitHub issue/PR templates and project workflow docs
```

## Current phase

See: `docs/roadmap/current-phase.md`.

At time of this restructuring, the project is in **Foundation / Repository Realignment**.

## How decisions are recorded

Architectural decisions are documented as ADRs in `docs/decisions/`.

Each ADR follows:
- Title
- Status
- Context
- Decision
- Alternatives considered
- Consequences

## How work is tracked

- Use GitHub Issues with templates in `.github/ISSUE_TEMPLATE/`
- Track larger streams via epics and milestones
- Use pull requests with `.github/pull_request_template.md`

## How to navigate docs

1. Start with `docs/vision/homelab-vision.md`
2. Review current state in `docs/inventory/`
3. Read target direction in `docs/architecture/`
4. Check ADRs in `docs/decisions/`
5. Use `docs/runbooks/bootstrap-sequence.md` for sequencing
6. Follow execution in `docs/roadmap/`

## Notes on sensitive data

Do not commit live secrets, tokens, credentials, private domains, or operationally sensitive values.
Use redacted examples with `TODO` placeholders where needed.
