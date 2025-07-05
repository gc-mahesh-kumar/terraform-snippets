provider "google" {
  project = "cloud-custom-demos"
}

resource "google_storage_bucket" "bucket_02" {
  name = "gcs-concepts-tf-demo-02"
  location = "us-central1"
  storage_class = "NEARLINE"
}
