output "machine_secrets" {
  sensitive = true
  value     = talos_machine_secrets.this.machine_secrets
}

output "client_configuration" {
  sensitive = true
  value     = talos_machine_secrets.this.client_configuration
}