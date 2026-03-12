# Homelab Vision

## Purpose

Create a reliable, well-documented homelab platform that supports:

- Learning and operating modern platform patterns
- Self-hosted services with clear operational boundaries
- A path to GitOps and higher-confidence change management
- Future experimentation with local AI and agentic workflows

## Guiding Principles

1. **Documentation-first**: design intent and operations should be understandable without tribal knowledge.
2. **Conservative assumptions**: unknown details are marked as TODO, not guessed.
3. **Separation of concerns**:
   - Proxmox for virtualization foundation
   - Kubernetes for cloud-native workloads
   - TrueNAS for storage/media anchor
4. **Incremental migration**: preserve service continuity while modernizing.
5. **GitHub-native workflow**: issues, ADRs, roadmap, and PRs are the planning system.

## Non-Goals (Current)

- Immediate migration of every existing service into Kubernetes
- Immediate redesign of the media platform final architecture
- Incorporating non-core desktop systems into core hosting operations

## Known Constraints

- Final media architecture is still under evaluation.
- Exact CPU/disk/network segment details are incomplete and need inventory completion.
