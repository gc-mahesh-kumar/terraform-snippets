# output "vm_ip" {
#   value = google_compute_instance.default.network_interfaces[0].network_ip
# }

# output "vm_name" {
#   value = google_compute_instance.default.name
# }

# output "vm_zone" {
#   value = google_compute_instance.default.zone
# }

# output "vm_network" {
#   value = google_compute_instance.default.network
# }

output "vm_machine_type" {
  value = google_compute_instance.default.machine_type
}
