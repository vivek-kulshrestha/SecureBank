terraform {
    required_providers {
        google = {
            source = "hashicorp/google"
        }
    }
}
provider "google" {
    version = "3.5.0"
    project = "analog-provider-401506"
    region  = "asia-south1"
    zone    = "as-south1-c"
}

resource "google_storage_bucket" "bucket" {
  name                        = "analog-provider-401506-bucket1"
  project                     = "analog-provider-401506"
  location                    = "asia-south1"
    }
