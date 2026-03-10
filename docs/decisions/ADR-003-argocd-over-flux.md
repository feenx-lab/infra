# ADR-003: Argo CD Preferred Over Flux for GitOps

## Status
Accepted

## Context
A GitOps control plane is required for Kubernetes workload lifecycle management. The team currently prefers Argo CD for usability and workflow alignment.

## Decision
Use Argo CD as the primary GitOps controller for Kubernetes environments.

## Alternatives considered

- Flux as primary GitOps controller
- Manual kubectl-first operations without a GitOps controller

## Consequences

- Standardizes GitOps workflow around Argo CD patterns.
- Requires Argo CD bootstrap, access, and operational runbooks.
- Existing Flux-oriented legacy references are archive-only unless re-adopted.
