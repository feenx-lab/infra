# Bootstrap Sequence (Initial)

## Objective
Provide a conservative, documentation-first bootstrap flow without assuming undeclared implementation details.

## Sequence

1. **Inventory baseline**
   - Confirm hardware inventory
   - Confirm network inventory
   - Confirm current service inventory
2. **Architecture baseline**
   - Validate target architecture docs
   - Confirm/adjust ADR set
3. **Proxmox foundation**
   - Plan and deploy Proxmox cluster baseline
   - Validate host networking and access
4. **Storage integration baseline**
   - Confirm TrueNAS role and required shared mounts
5. **Kubernetes virtualization plan**
   - Define VM topology and bootstrap method
   - Deploy initial virtualized Kubernetes cluster
6. **GitOps bootstrap**
   - Install and validate Argo CD
   - Start managing platform apps via GitOps
7. **Media migration planning**
   - Document current media stack details and migration options

## Exit Criteria (Phase-1/2 Oriented)

- Documentation set is coherent and reviewable
- Core decisions captured as ADRs
- Backlog and milestones updated for execution

## TODO

- TODO: Add command-level runbook once implementation choices are finalized.
