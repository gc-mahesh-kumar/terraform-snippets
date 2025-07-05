terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "6.41.0"
    }
  }

  #Manually create this bucket  
  backend "gcs" {
    bucket = "tf-state-pca-concepts"
    prefix = "terraform/state/dev"
  }
}

provider "google" {
  project = "cloud-custom-demos"
}
