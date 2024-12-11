terraform {
  backend "gcs" {
    bucket  = "assessment-cmite-bucket"
    prefix  = "gcp-infra"
    project = "gcp-project"
  }
}
