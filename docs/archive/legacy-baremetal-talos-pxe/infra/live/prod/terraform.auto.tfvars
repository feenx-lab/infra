# Redacted archival sample.
# Original hostnames, IPs, MAC addresses, and organization-specific values were removed
# during the documentation-first repository pivot.

cluster_nodes = {
  node0 = {
    hostname        = "TODO.example.internal"
    ip              = "TODO"
    mac_address     = "TODO"
    wake_on_lan_mac = "TODO"
    install_disk    = "/dev/TODO"
    role            = "controlplane"
    bootstrap       = true
  }
}

cluster_info = {
  name        = "TODO-cluster-name"
  nameservers = ["TODO"]
  virtual_ip  = "TODO"
  endpoint    = "https://TODO:6443"
}

k8s_version = "TODO"

github_organization = "TODO"
github_repository   = "TODO"
