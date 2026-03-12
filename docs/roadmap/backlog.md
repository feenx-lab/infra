# Backlog

## Next Up (First-Wave Priorities)

Work these first, in order, to move from planning to executable platform work.
(Items 1-2 unblock 3-4; item 5 captures migration constraints before architecture commitments.)

1. [ ] Finalize hardware inventory with verified CPU/disk/NIC details for all three MS-A2 nodes.
2. [ ] Finalize network inventory including physical links and current device connectivity.
3. [ ] Define first-wave network segmentation intent (management/workload/storage) and record open gaps.
4. [ ] Define initial Proxmox bootstrap plan and host preparation checklist.
5. [ ] Capture current media stack migration constraints and dependencies that must be preserved.

## Inventory and Discovery

- [ ] Record exact hardware details for compute nodes (CPU model, disks, NIC mapping).
- [ ] Record exact TrueNAS hardware summary and current storage export patterns.
- [ ] Document current non-media services and ownership.
- [ ] Document recovery-critical services and priority order.

## Network Core

- [ ] Document current physical network topology (gateway, switches, host uplinks).
- [ ] Document current VLANs/subnets and note unknowns explicitly.
- [ ] Define target segmentation boundaries for management/workload/storage traffic.
- [ ] Define baseline firewall and routing expectations at high level.

## Proxmox Platform

- [ ] Document Proxmox installation/cluster bootstrap sequence.
- [ ] Define host baseline configuration checklist (time, DNS, update policy, access model).
- [ ] Define minimum validation checks for healthy Proxmox foundation.

## Kubernetes and GitOps

- [ ] Define Kubernetes VM approach (control-plane/worker pattern and failure-domain assumptions).
- [ ] Choose and document Kubernetes bootstrap method.
- [ ] Define Argo CD bootstrap approach and repo/app structure.
- [ ] Define initial set of workloads to onboard through GitOps first.

## Media Platform

- [ ] Document as-is media service dependencies and data flow constraints.
- [ ] Define decision matrix for Plex vs Jellyfin vs Emby.
- [ ] Define runtime options comparison (TrueNAS-hosted apps vs dedicated media VM).
- [ ] Define migration success criteria and rollback strategy.

## Automation and Quality

- [ ] Add markdown/docs linting checks appropriate for this repo.
- [ ] Add simple validation scripts for inventory completeness checks.
- [ ] Define PR review checklist for architecture and roadmap updates.

## Future AI / Agent Platform

- [ ] Define readiness criteria to start AI/agent platform work.
- [ ] Document first candidate AI/agent use-cases for homelab value.
- [ ] Define dependency map from foundation milestones to AI/agent milestones.
