# Network Topology

## Current Known Components

- Ubiquiti Cloud Gateway Fiber
- Ubiquiti Pro XG 8 PoE
- Ubiquiti Lite 16 PoE
- Three MS-A2 compute nodes (10GbE)
- Separate TrueNAS storage node

## Target Topology Intent

- Isolate management and workload concerns where practical.
- Preserve clear path for storage traffic between compute and TrueNAS.
- Support VM-based Kubernetes networking without overcomplicating initial rollout.

## TODO

- TODO: Produce canonical topology diagram.
- TODO: Define management network, workload network, and storage network boundaries.
- TODO: Define VLAN IDs and subnet/IP plan.
- TODO: Define baseline firewall and east-west controls.
