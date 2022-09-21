resource "google_sql_database_instance" "gcp-postgresql" {
  ###$name = "postgresql-from-tf2"
  name = var.db-pg-instance-name
  ###$database_version = "POSTGRES_14"
  database_version = var.db-pg-instance-version
  ####$deletion_protection = false
  deletion_protection = var.db-pg-instance-deletion-protection
  ###$region = "us-central1"
  region = var.db-pg-instance-region
  
  settings {
    ###$tier = "db-f1-micro"
    tier = var.db-pg-instance-tier

    ip_configuration  {
      authorized_networks {
        ###$name  = "asdfg" 
        name  = "asdfg" 
        ###$value = "37.252.89.188/32"
        value = "37.252.89.188/32"
      }
    }
  }
}

resource "google_sql_user" "myuser" {
  ###$name = "myroot001"
  name = var.pg-user-name
  ###$password = "myroot123"
  password = var.pg-user-password
  instance = google_sql_database_instance.gcp-postgresql.name
}
