# Media Platform Architecture

## Current state

- Docker Compose media stack runs in a Proxmox VM.
- Storage is NFS-backed from TrueNAS.
- Plex currently uses NVIDIA-backed transcoding.

## Future state (under evaluation)

The final media platform design remains open.
Current evaluation tracks:

1. Plex vs Jellyfin vs Emby
2. Media workloads on TrueNAS vs dedicated media VM
3. Operational and backup model for media services

## Design guardrail

Keep media platform evolution separate from core lab control-plane reliability work.

## TODOs

- TODO: Define migration criteria (downtime tolerance, performance, maintainability).
- TODO: Define decision timeline and ADR trigger points.
- TODO: Define target observability for media workloads.
