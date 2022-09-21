resource "google_cloud_run_service" "gcp-cloudrun" {
  ###$name = "run-app-from-tf"
  name = var.cloudrun-service-name
  ###$location = "us-central1"
  location = var.cloudrun-service-location
  
  template {
    spec {
      containers {
          ports {
            ###$container_port = 80
            container_port = var.cloudrun-container-port
          }
        ###$image = "gcr.io/google-samples/hello-app:1.0"
        image = "gcr.io/terraform-gcp-362210/nginx:latest"
      }
    }
  }

  /*traffic {
    revision_name = "run-app-from-tf-xdhmf"
    percent = 50
  }
  traffic {
    revision_name = "run-app-from-tf-lqbx2"
    percent = 50
  }*/


  
}


resource "google_cloud_run_service_iam_policy" "pub_access" {
  service = google_cloud_run_service.gcp-cloudrun.name
  location = google_cloud_run_service.gcp-cloudrun.location
  policy_data = data.google_iam_policy.pub-1.policy_data
}

data "google_iam_policy" "pub-1" {
  binding {
    role = "roles/run.invoker"
    members = [ "allUsers", ]
  }
}
