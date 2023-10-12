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