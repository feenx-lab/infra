# Media Migration Roadmap (Planning Track)

## Objective
Plan a safe transition path for the media platform without forcing premature architecture decisions.

## Current State Summary

- Docker Compose media stack in Proxmox VM
- NFS-backed media from TrueNAS
- NVIDIA-backed Plex transcoding dependency

## Phased Plan

### Phase A - Document and Stabilize

- Capture as-is architecture and dependencies
- Record backup/restore and failure modes

### Phase B - Evaluate Target Options

- Compare Plex/Jellyfin/Emby against requirements
- Compare runtime options (TrueNAS-hosted vs dedicated media VM)

### Phase C - Pilot and Validate

- Run limited-scope pilot of preferred option
- Validate transcoding, storage access, and operational overhead

### Phase D - Execute Migration

- Implement staged migration with rollback checkpoints
- Retire obsolete components after validation

## TODO

- TODO: Define weighted decision criteria for platform selection.
- TODO: Define exact migration windows and cutover sequencing.
- TODO: Define monitoring/SLO expectations for media services.
