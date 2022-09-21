resource "google_storage_bucket" "gcp-bucket" {
  name = var.website-bucket-name
  storage_class = var.website-bucket-storage-class
  location = var.website-bucket-location
  uniform_bucket_level_access = var.website-bucket-level-access
}



