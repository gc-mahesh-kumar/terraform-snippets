output "bucket_output" {
  value = join(" ", [google_storage_bucket.bucket_01.name, "is provisioned in", google_storage_bucket.bucket_01.location])
}
