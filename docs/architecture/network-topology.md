# Network Topology (Draft)

## Known topology anchors

- Ubiquiti Cloud Gateway Fiber (gateway/routing role)
- Ubiquiti Pro XG 8 PoE and Lite 16 PoE (switching fabric)
- 10GbE-capable Proxmox compute nodes
- Separate TrueNAS system

## Target segmentation intent

- Separate management/control traffic from workload traffic.
- Ensure storage access paths are explicit and observable.
- Keep externally exposed services constrained and auditable.

## TODOs

- TODO: Define VLAN layout and naming.
- TODO: Define subnet and addressing model.
- TODO: Define north-south ingress model for Kubernetes services.
- TODO: Define east-west policy posture between major service zones.
