# Media Platform Architecture (Current + Future)

## Current State

- Media stack runs as Docker Compose inside a Proxmox VM.
- Includes Plex plus supporting media ecosystem services.
- Uses NFS-mounted media storage from TrueNAS.
- Uses NVIDIA-backed Plex transcoding in current deployment.

## Position in Overall Platform

- Media is important but remains a separate domain from core platform modernization.
- Core lab platform work (Proxmox, Kubernetes, Argo CD) should not be blocked by unresolved media end-state decisions.

## Future State (Under Evaluation)

Open questions:

- Preferred media server platform (Plex vs Jellyfin vs Emby)
- Runtime location (apps directly on TrueNAS vs dedicated media VM)
- Long-term operational model and migration phasing

## TODO

- TODO: Build decision matrix for media server/runtime options.
- TODO: Define migration guardrails and rollback strategy.
- TODO: Identify which services remain VM-native vs move to other runtime models.
