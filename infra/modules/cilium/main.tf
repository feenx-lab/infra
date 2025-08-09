# Data
data "helm_template" "cilium" {
  name         = "cilium"
  repository   = "https://helm.cilium.io/"
  chart        = "cilium"
  version      = var.cilium_version
  kube_version = var.k8s_version

  create_namespace = true
  namespace        = "kube-system"

  # set = [
  #   { name = "ipam.mode", value = "kubernetes" },
  #   { name = "kubeProxyReplacement", value = "true" },
  #   { name = "securityContext.capabilities.ciliumAgent", value = "{CHOWN,KILL,NET_ADMIN,NET_RAW,IPC_LOCK,SYS_ADMIN,SYS_RESOURCE,DAC_OVERRIDE,FOWNER,SETGID,SETUID}" },
  #   { name = "securityContext.capabilities.cleanCiliumState", value = "{NET_ADMIN,SYS_ADMIN,SYS_RESOURCE}" },
  #   { name = "cgroup.autoMount.enabled", value = "false" },
  #   { name = "cgroup.hostRoot", value = "/sys/fs/cgroup" },
  #   { name = "k8sServiceHost", value = "localhost" },
  #   { name = "k8sServicePort", value = "7445" },
  #   { name = "gatewayAPI.enabled", value = "true" },
  #   { name = "gatewayAPI.enableAlpn", value = "true" },
  #   { name = "gatewayAPI.enableAppProtocol", value = "true" },
  #   { name = "cni.exclusive", value = "false" }
  # ]

  values = [ file("${path.module}/values.yaml") ]
}

# Outputs
output "manifests" {
  sensitive = true
  value = [
    {
      name = "cilium"
      contents = data.helm_template.cilium.manifest
    }
  ]
}