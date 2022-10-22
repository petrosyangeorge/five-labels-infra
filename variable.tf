#===================Google_storage_bucket=====================
variable "website-bucket-name" {
    type        = string
    default     = "petrosyangeorge.com"
    description = "The name of the Google storage bucket resources"
}

variable "website-bucket-storage-class" {
    type        = string
    default     = "NEARLINE"
    description = "The name of the Bucket storage class"
}

variable "website-bucket-location" {
    type        = string
    default     = "US-CENTRAL1"
    description = "The name of the Bucket location"
}

variable "website-bucket-level-access" {
    type        = bool
    default     = true
    description = "The bucket level access"
}

variable "website-bucket-role" {
    type        = string
    default     = "roles/storage.objectViewer"
    description = "The name of the Bucket role"
}

variable "website-bucket-member" {
    type        = string
    default     = "allUsers"
    description = "The name of the Bucket member"
}

#===================Google_storage_admin_bucket=====================
variable "website-admin-bucket-name" {
    type        = string
    default     = "admin.petrosyangeorge.com"
    description = "The name of the Google storage admin bucket resources"
}

variable "website-admin-bucket-storage-class" {
    type        = string
    default     = "NEARLINE"
    description = "The name of the admin Bucket storage class"
}

variable "website-admin-bucket-location" {
    type        = string
    default     = "US-CENTRAL1"
    description = "The name of the admin Bucket location"
}

variable "website-admin-bucket-level-access" {
    type        = bool
    default     = true
    description = "The admin bucket level access"
}

variable "website-admin-bucket-role" {
    type        = string
    default     = "roles/storage.objectViewer"
    description = "The name of the admin Bucket role"
}

variable "website-admin-bucket-member" {
    type        = string
    default     = "allUsers"
    description = "The name of the admin Bucket mamber"
}
#===================Google_cloud_run_service==================
variable "cloudrun-service-name" {
    type        = string
    default     = "gcp-cloudrun"
    description = "The name of the Cloud run service"
}

variable "cloudrun-service-location" {
    type    = string
    default     = "us-central1"
    description = "The name of the Cloud run Location"
}

variable "cloudrun-container-port" {
    type        = string
    default     = "80"
    description = "The Container port"
}

#==================Google_sql_database_instance================

variable "db-pg-instance-name" {
    type        = string
    default     = "gcp-postgresql"
    description = "The name of the Cloud SQL resources"
}

variable "db-pg-instance-version" {
    type        = string
    default     = "POSTGRES_14"
    description = "The database version to use"
}

variable "db-pg-instance-deletion-protection" {
    type        = bool
    default     = false
    description = "Used to block Terraform from deleting a SQL Instance"
}

variable "db-pg-instance-region" {
    type        = string
    default     = "us-central1"
    description = "The region of the Cloud SQL resources"
}

variable "db-pg-instance-tier" {
    type        = string
    default     = "db-f1-micro"
    description = "The tier for the sql database instanc"
}

variable "pg-user-name" {
    type        = string
    default     = "sqlnamterre"
    description = "The name of the default user. If not set, a random one will be generated"
}

variable "pg-user-password" {
    type        = string
    default     = "sqlname123"
    description = "The password for the default user. If not set, a random one will be generated"
}

variable "pg-authorized-name" {
    type        = string
    default     = "name-example"
    description = "The Connection Authorized networks name"
}

variable "pg-authorized-ip" {
    type        = string
    default     = "8.8.8.8/32"
    description = "The Connection Authorized networks ip from which must login"
}

