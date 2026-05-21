output "instance_id" {
  description = "ID of the created VM instance."
  value       = google_compute_instance.vm.id
}

output "public_ip" {
  description = "Public IP address of the created VM instance."
  value       = google_compute_instance.vm.network_interface[0].access_config[0].nat_ip
}

output "self_link" {
  description = "Self-link URL of the created VM instance."
  value       = google_compute_instance.vm.self_link
}
