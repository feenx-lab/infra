# Media Migration Roadmap (Draft)

## Current baseline

- Media stack runs in Docker Compose on a Proxmox VM.
- Storage is NFS-backed by TrueNAS.
- Plex currently uses NVIDIA-backed transcoding.

## Evaluation track

1. Define success criteria (reliability, simplicity, performance, maintainability).
2. Compare platform options (Plex/Jellyfin/Emby).
3. Compare deployment options (TrueNAS-hosted apps vs dedicated VM).
4. Define migration sequencing and rollback boundaries.

## Suggested phases

- **Phase A:** Current-state validation and documentation hardening
- **Phase B:** Option analysis and proof-of-concept planning
- **Phase C:** Decision capture (ADR)
- **Phase D:** Controlled migration execution
- **Phase E:** Post-migration hardening and cleanup

## TODOs

- TODO: Define explicit non-functional requirements for media UX.
- TODO: Define cutover window constraints.
- TODO: Define backup/restore rehearsal expectations.
