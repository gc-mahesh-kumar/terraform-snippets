module "gcs_bucket" {
  source            = "./modules/gcs"
  gcs_bucket_name   = var.gcs_bucket_name
  gcs_bucket_location = var.gcs_bucket_location
  gcs_bucket_class  = var.gcs_bucket_class
}