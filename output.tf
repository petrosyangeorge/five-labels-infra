output "Bucket-url" {
    value       = google_storage_bucket.gcp-bucket.url
}

output "Cloud-run-service-url" {
    value       = google_cloud_run_service.gcp-cloudrun.status[0].url
    description = "The URL on which the deployed service is available"
}

output "Instance_ip_address" {
    value       = google_sql_database_instance.gcp-postgresql.ip_address
    description = "The IPv4 address assigned for the  instance"
}

output "Public_ip_address" {
    value       = google_sql_database_instance.gcp-postgresql.public_ip_address
    description = "The first public IPv4 address assigned for the instance"
}