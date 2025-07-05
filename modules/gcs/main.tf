resource "google_storage_bucket" "bucket_01" {
  name          = var.gcs_bucket_name
  location      = var.gcs_bucket_location
  storage_class = var.gcs_bucket_class
}

# resource "google_storage_bucket" "bucket_02" {
#   name          = "learn_dependency_concept"
#   location      = var.gcs_bucket_location
#   storage_class = var.gcs_bucket_class
#   depends_on    = [google_storage_bucket.bucket_03]
# }

# resource "google_storage_bucket" "bucket_03" {
#   name          = "learn_dependency_concept_03"
#   location      = var.gcs_bucket_location
#   storage_class = var.gcs_bucket_class
# }