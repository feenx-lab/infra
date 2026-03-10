# ADR-003: Argo CD Preferred Over Flux for GitOps

## Status
Accepted

## Context
A GitOps controller is required for Kubernetes application lifecycle. Previous code included Flux-related modules, but current platform direction prefers Argo CD.

## Decision
Use Argo CD as the primary GitOps control plane for Kubernetes workloads.

## Alternatives considered
- Continue with Flux-based approach
- Manual kubectl/Helm workflows without a GitOps controller

## Consequences
- Repository structure and runbooks prioritize Argo CD bootstrap patterns.
- Existing Flux-oriented legacy code is preserved only for historical reference.
