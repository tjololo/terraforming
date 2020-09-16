
output "id" {
  value = module.k8s.id
}

output "kube_config" {
  value = module.k8s.kube_config
}

output "client_key" {
  value = module.k8s.client_key
}

output "client_certificate" {
  value = module.k8s.client_certificate
}

output "cluster_ca_certificate" {
  value = module.k8s.cluster_ca_certificate
}

output "host" {
  value = module.k8s.host
}