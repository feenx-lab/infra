# Current Media Stack (As-Is)

## Summary

The current media platform runs as a **Docker Compose stack inside a VM on Proxmox**.
It is broader than Plex alone and includes supporting media-management and access services.

## Known components

- Plex
- Tautulli
- nginx reverse proxy
- ACME companion
- Cloudflare tunnel
- Cloudflare DDNS
- Radarr
- Sonarr
- Bazarr
- Prowlarr
- Overseerr
- Homepage
- Recyclarr
- FlareSolverr
- Torrent/VPN-related services

## Storage and compute characteristics

- Media storage is mounted over **NFS from TrueNAS**.
- Current Plex deployment uses **NVIDIA-backed transcoding access** within the Docker stack.

## Migration intent

The media platform will be redesigned, but the final architecture is not decided.
Open evaluation areas:

- Plex vs Jellyfin vs Emby
- Media apps directly on TrueNAS vs dedicated media VM

## Guardrails

- Do not commit live credentials, tokens, domains, or private operational values.
- Track unknowns and decisions as TODOs + ADRs.

## TODOs

- TODO: Document current backup/restore approach for media services.
- TODO: Document current GPU pass-through/runtime configuration at high level.
- TODO: Capture data-path and failure-domain assumptions for redesign planning.
