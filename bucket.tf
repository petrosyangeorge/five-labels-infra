resource "google_storage_bucket" "gcp-bucket" {
  name = var.website-bucket-name
  storage_class = var.website-bucket-storage-class
  location = var.website-bucket-location
  uniform_bucket_level_access = var.website-bucket-level-access
}

resource "google_storage_bucket" "gcp-admin-bucket" {
  name = var.admin-bucket-name
  storage_class = var.admin-bucket-storage-class
  location = var.admin-bucket-location
  uniform_bucket_level_access = var.admin-bucket-level-access
}

