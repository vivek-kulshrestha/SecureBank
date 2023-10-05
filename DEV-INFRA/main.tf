# Create new storage bucket in the US multi-region
# with standard storage

resource "google_storage_bucket" "static" 
 name          = "in-gcp-apa-con-saadk-sbx-1-bucket-test"
 location      = "US"
 storage_class = "STANDARD"

 uniform_bucket_level_access = true
