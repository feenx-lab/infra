# ADR-002: Kubernetes Initially Runs Inside Proxmox

## Status
Accepted

## Context
The immediate goal is to stand up a manageable Kubernetes environment while minimizing infrastructure risk during platform transition.

## Decision
Run the first Kubernetes cluster as virtual machines inside Proxmox.

## Alternatives considered

- Immediate return to bare-metal Kubernetes
- Postpone Kubernetes until full physical architecture redesign is complete

## Consequences

- Enables phased adoption of Kubernetes and GitOps practices.
- Adds VM-layer considerations for performance and operations.
- Keeps migration path open for future architecture changes.
