# Current Phase

## Phase

**M0 - Foundation / Documentation Restructuring**

## Why This Phase Matters

This phase creates the execution baseline for all follow-on milestones. Without accurate inventory, explicit architecture boundaries, and prioritized tasks, later implementation work will create rework and hidden risk.

## Top Concrete Goals

1. Make the docs set operationally useful (not just structurally complete).
2. Replace unknown inventory placeholders with verified facts.
3. Lock the near-term architecture direction and responsibility boundaries.
4. Prepare clean handoff into M1 (Network Core) and M2 (Proxmox Platform).

## Immediate Next Actions (3-5)

1. Finalize hardware inventory with exact host values (CPU, disk layout, NIC mapping).
2. Finalize network inventory and physical connectivity mapping.
3. Define initial Proxmox bootstrap plan (host prep, installation sequence, baseline validation).
4. Define first-wave network/VLAN strategy at a high level (management/workload/storage intent).
5. Document current media stack constraints that affect migration planning.


## Not in This Phase

- Proxmox production rollout execution
- Kubernetes cluster cutover or full GitOps onboarding
- Final media platform architecture decision and migration execution

## Exit Criteria

- Canonical architecture doc is clear on responsibilities and near-term direction.
- Hardware and network inventory docs contain verified baseline facts (or explicit gaps).
- Backlog is prioritized with actionable first-wave tasks.
- Bootstrap sequence reflects realistic near-term execution flow.
- M1 kickoff plan is clear enough to open and assign concrete implementation issues.

## Next Milestone After This Phase

**M1 - Network Core**

Focus shifts from documentation baseline to implementation-ready network planning:

- finalize segmentation approach
- document connectivity map
- establish initial policies needed for Proxmox and storage integration
