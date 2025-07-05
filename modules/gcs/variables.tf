variable "gcs_bucket_name" {
    description = "Name of the Bucket"
    type = string
}

variable "gcs_bucket_location" {
    default = "asia-south1"
}

variable "gcs_bucket_class" {
  description = "Storage class"
  type = string
  default = "STANDARD"
}