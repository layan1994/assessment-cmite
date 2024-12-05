1. Write a sample Conftest policy that ensures all Terraform code includes encryption for GCS buckets and restrict the project

# Ensure encryption is enabled on GCS buckets

deny["Encryption must be enabled on the GCS bucket"] {
input.resource_type == "google_storage_bucket"
not input.resource.spec.encryption
}

# Ensure the GCS bucket is restricted to a specific project

deny["The GCS bucket must be restricted to a specific project"] {
input.resource_type == "google_storage_bucket"
input.resource.spec.project != "your-project-id"
}
