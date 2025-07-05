provider "google" {
  project = "cloud-custom-demos"
}

resource "google_storage_bucket" "bucket_01" {
  name          = "gcs-concepts-tf-demo-01"
  location      = "us-central1"
  storage_class = "NEARLINE"
}
