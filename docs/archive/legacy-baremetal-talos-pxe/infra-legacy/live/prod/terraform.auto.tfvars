# REDACTED LEGACY EXAMPLE
#
# This file preserves the structure of the previous environment-specific tfvars
# while removing private operational values.

cluster_nodes = {
  node0 = {
    hostname        = "<redacted-hostname>"
    ip              = "<redacted-ip>"
    mac_address     = "<redacted-mac>"
    wake_on_lan_mac = "<redacted-mac>"
    install_disk    = "<redacted-disk>"
    role            = "controlplane"
    bootstrap       = true
  }
}

cluster_info = {
  name        = "<redacted-cluster-name>"
  nameservers = ["<redacted-ns-ip>"]
  virtual_ip  = "<redacted-vip>"
  endpoint    = "https://<redacted-endpoint>:6443"
}

k8s_version = "<redacted-k8s-version>"

github_organization = "<redacted-org>"
github_repository   = "<redacted-repo>"
