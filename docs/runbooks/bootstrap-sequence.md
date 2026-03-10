# Bootstrap Sequence (Documentation-First)

## Objective
Provide a conservative order of operations for establishing the new platform direction.

## Sequence

1. **Foundation docs alignment**
   - Validate inventory, architecture drafts, and ADR baselines.
2. **Network core documentation and validation**
   - Confirm switching/routing baseline and segmentation plan.
3. **Proxmox platform baseline**
   - Establish cluster plan and host standardization checklist.
4. **Storage integration alignment**
   - Confirm TrueNAS access model for platform workloads.
5. **Virtualized Kubernetes bootstrap**
   - Define VM node model and cluster initialization approach.
6. **Argo CD bootstrap**
   - Define Git repository and app-of-apps/bootstrapping pattern.
7. **Workload onboarding phases**
   - Start with low-risk services before critical workloads.

## Preconditions

- No secrets committed to Git.
- TODO-marked unknowns tracked in backlog.
- Decisions requiring direction captured via ADRs.

## TODOs

- TODO: Add concrete command/runbook steps after implementation choices are finalized.
- TODO: Add rollback/checkpoint gates between phases.
