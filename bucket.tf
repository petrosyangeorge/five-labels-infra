resource "google_storage_bucket" "gcp-bucket" {
  
  ###$name = "gcsterraformbucket111"
  name = var.bucket-name
  ###$storage_class = "NEARLINE"
  storage_class = var.bucket-storage-class
  ###$location = "US-CENTRAL1"
  location = var.bucket-location

  /*labels = {
    "env" = "tf_env"
    "dep" = "complience"
  }*/
  
  uniform_bucket_level_access = var.bucket-level-access

  /*lifecycle_rule {
    condition {
      age = 5
    }
    action {
      type = "SetStorageClass"
      storage_class = "COLDLINE"
    }
  }*/

  /*retention_policy {
    is_locked = true
    retention_period = 864000
  }*/

}

#resource "google_storage_bucket_object" "picture" {
#  name = "vodafone_logo"
#  bucket = google_storage_bucket.GCS1.name
#  source = "tupoy.JPG"
#}

