terraform {
    required_providers {
        google = {
            source = "hashicorp/google"
        }
    }
}
provider "google" {
    version = "5.1.0"
    project = "analog-provider-401506"
    region  = "asia-south1"
    zone    = "asia-south1-b"
}

resource "google_storage_bucket" "bucket" {
  name                        = "analog-provider-401506-bucket2"
  project                     = "analog-provider-401506"
  location                    = "asia-south1"
    }