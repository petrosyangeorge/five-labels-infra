resource "google_storage_bucket" "gcp-bucket" {
  name = var.website-bucket-name
  storage_class = var.website-bucket-storage-class
  location = var.website-bucket-location
  uniform_bucket_level_access = var.website-bucket-level-access

  website {
    main_page_suffix = "index.html"
    not_found_page   = "404.html"
  } 

}


		resource "google_storage_bucket_iam_member" "public_access" {
  bucket = google_storage_bucket.gcp-bucket.name
  role = "roles/storage.objectViewer"
  member = "allUsers"
}





resource "google_storage_bucket" "gcp-admin-bucket" {
  name = var.website-admin-bucket-name
  storage_class = var.website-admin-bucket-storage-class
  location = var.website-admin-bucket-location
  uniform_bucket_level_access = var.website-admin-bucket-level-access

  website {
    main_page_suffix = "index.html"
    not_found_page   = "404.html"
  } 

}


		resource "google_storage_bucket_iam_member" "admin_public_access" {
  bucket = google_storage_bucket.gcp-admin-bucket.name
  role = "roles/storage.objectViewer"
  member = "allUsers"
}