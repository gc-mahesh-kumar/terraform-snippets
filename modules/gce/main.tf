resource "google_compute_instance" "default" {  
  name       = var.compute_name
  zone       = "us-central1-a"
  network_interface {
    access_config {}
    subnetwork = var.subnet_name_01
  }
  allow_stopping_for_update = true
  machine_type = "n2-standard-4"
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-12"
    }
  }
}