variable "gcs_bucket_name" {
  description = "Name of the Bucket"
  type        = string
}

variable "gcs_bucket_location" {
  default = "asia-south1"
}

variable "gcs_bucket_class" {
  description = "Storage class"
  type        = string
  default     = "STANDARD"
}

variable "vpc_name" {}


variable "subnet_name_01" {
  default     = "subnet-01"
  description = "Name of the subnet"
}

variable "subnet_cidr_01" {
  default = "10.5.1.0/24"
}

variable "region" {
  default = "us-central1"
}

variable "compute_name" {
  default = "compute-01"
}