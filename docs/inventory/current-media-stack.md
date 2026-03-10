# Current Media Stack (As-Is)

## Runtime Model

- The media platform currently runs as a Docker Compose stack in a VM hosted on Proxmox.
- It is a broader media stack around Plex, not a Plex-only deployment.

## Known Services

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
- torrent/VPN-related services

## Storage and Acceleration

- Media storage is mounted over NFS from TrueNAS.
- Current Plex operation uses NVIDIA-backed GPU access for transcoding.

## Migration Intent

- The media platform will be redesigned, but end-state is still open.
- Open options include:
  - Plex vs Jellyfin vs Emby
  - Media apps on TrueNAS vs dedicated media VM

## Security / Data Handling Notes

- This document intentionally excludes live credentials, tokens, domains, and private operational values.

## TODO

- TODO: Document current data paths, backup strategy, and restore procedure.
- TODO: Define acceptance criteria for media platform migration options.
