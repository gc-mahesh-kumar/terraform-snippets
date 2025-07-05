resource "google_storage_bucket" "bucket_01" {
  name          = var.gcs_bucket_name
  location      = var.gcs_bucket_location
  storage_class = "NEARLINE"
}
