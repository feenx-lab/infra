# Target Architecture (Canonical Anchor)

## Purpose

Define the canonical platform architecture direction for this repository so planning and implementation stay consistent.

This document explains what each platform area is responsible for, what major choices are already made, and what is intentionally still open.

## Design Goals

1. Use the three identical Minisforum MS-A2 nodes as a flexible general compute foundation.
2. Establish Proxmox as the base virtualization substrate for host-level lifecycle control.
3. Run Kubernetes as one important workload platform inside Proxmox, not as the only possible runtime.
4. Keep TrueNAS separate as the storage/media anchor to preserve clear storage responsibility boundaries.
5. Keep media platform modernization as a separate operational track from core platform bootstrap.
6. Stage AI/agent platform work after core reliability and repeatability are in place.
7. Keep planning and execution traceable in GitHub via docs, ADRs, issues, and PRs.

## High-Level Direction

- **Compute foundation:** 3× Minisforum MS-A2 nodes (96 GB RAM each, 10GbE) are the primary compute platform.
- **Virtualization substrate:** Proxmox is the host-level control plane for virtualization.
- **Container platform:** Kubernetes runs inside Proxmox VMs for cloud-native workloads.
- **GitOps:** Argo CD is the preferred GitOps controller for Kubernetes.
- **Storage anchor:** TrueNAS remains separate from the core compute cluster.
- **Media domain:** Current media stack remains a separate operational track while core platform is stabilized.
- **Future domain:** AI/agent capabilities come later, after foundational phases are complete.

## Why This Direction

### Why the three Minisforum nodes are used as general compute

- They provide the known, current core compute footprint.
- Their identical class simplifies baseline planning and repeatability.
- They are available now, while older rack hardware is intentionally deferred.

### Why Proxmox is the substrate

- It provides a stable virtualization base and host lifecycle control.
- It allows multiple workload types over time (not only Kubernetes).
- It decouples physical host operations from workload platform operations.

### Why Kubernetes is inside Proxmox (and not the only platform)

- Kubernetes remains a core target for cloud-native workloads.
- Running it in VMs keeps Kubernetes lifecycle concerns separate from host concerns.
- Proxmox remains the broader platform substrate for workloads that may not belong in Kubernetes.

### Why TrueNAS stays separate

- TrueNAS already anchors storage/media workflows.
- Keeping storage separate reduces scope coupling during compute/platform migration.
- It preserves a clear data boundary while the compute platform evolves.

### Why media is a separate operational track

- The current media stack is operational and multi-service, with unresolved end-state decisions.
- Core platform bootstrap (inventory, network core, Proxmox, k8s, GitOps) must progress without blocking on final media architecture choice.

### Why AI/agent work is later

- AI/agent capabilities depend on stable foundation layers (network, virtualization, storage contracts, repeatable operations).
- Deferring this domain prevents premature complexity before core platform stability is established.


## Responsibility Boundaries

- **Proxmox**
  - Owns host virtualization lifecycle, VM runtime substrate, and core compute availability.
- **Kubernetes (inside Proxmox)**
  - Owns orchestration of cloud-native workloads deployed into the k8s environment.
- **Argo CD**
  - Owns GitOps reconciliation for Kubernetes application delivery.
  - Does not replace Proxmox host/VM lifecycle management.
- **TrueNAS**
  - Owns storage and media data anchor responsibilities.
  - Is not treated as part of the compute virtualization cluster.
- **Media platform**
  - Owns media-service lifecycle and migration planning as a distinct track.
  - Must not block core platform foundation milestones.
- **Future AI/Agent platform**
  - Owns future AI/agent workload planning and deployment patterns.
  - Starts only after foundation milestones are stable.

## Out of Scope for Day-1 Bootstrap

- Full media platform redesign/cutover execution
- Full AI/agent platform rollout
- Precise VM sizing, storage class definitions, and ingress standards before inventory/network baselines are finalized

## Logical Layers

1. **Physical + network layer**
   - Power, switching, routing, and physical connectivity.
2. **Virtualization layer (Proxmox)**
   - Host lifecycle and VM substrate.
3. **Workload platform layer (Kubernetes in VMs)**
   - Container orchestration for cloud-native workloads.
4. **Delivery/control layer (Argo CD)**
   - GitOps application lifecycle within Kubernetes.
5. **Domain workload layer**
   - Core platform apps, media services, and later AI/agent workloads.
6. **Data layer (TrueNAS anchor)**
   - Storage/media data services consumed by platform domains.

## Near-Term Architecture Decisions Already Made

- Proxmox-first foundation (ADR-001)
- Kubernetes runs inside Proxmox VMs (ADR-002)
- Argo CD is preferred over Flux (ADR-003)
- TrueNAS remains a separate storage anchor (ADR-004)
- Media modernization stays separate from core lab bootstrap (ADR-005)

## Known Open Questions / TODOs

- TODO: Define initial Kubernetes VM topology and bootstrap method.
- TODO: Define first-wave network segmentation model (management/workload/storage) without overfitting too early.
- TODO: Define storage integration contracts between Proxmox/Kubernetes workloads and TrueNAS.
- TODO: Define ingress/TLS/DNS standards once baseline network and platform choices are finalized.
- TODO: Define media migration decision matrix and cutover constraints.
- TODO: Define when foundation stability is sufficient to begin AI/agent platform phases.
