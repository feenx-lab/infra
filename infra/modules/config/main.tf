# Data
data "talos_client_configuration" "this" {
  cluster_name         = var.cluster_name
  client_configuration = talos_machine_secrets.this.client_configuration
  nodes                = var.node_names
  endpoints            = var.node_ips
}

# Resources
resource "talos_machine_secrets" "this" {
  talos_version = var.talos_version
}

resource "local_sensitive_file" "talos_config" {
  content  = data.talos_client_configuration.this.talos_config
  filename = pathexpand("~/.talos/config")
}