resource "google_compute_subnetwork" "default" {
  name                     = var.subnet_name_01
  region                   = var.region
  network                  = google_compute_network.default.id
  private_ip_google_access = true
  ip_cidr_range            = var.subnet_cidr_01
}