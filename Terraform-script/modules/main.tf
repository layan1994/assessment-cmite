provider "google" {
  project = "assessment-cmite"
  region  = "us-central1"
}

module "gke" {
  source = "./gke"
  project_id = var.project_id
}
module "vpc" {
  source = "./vpc"
  project_id = var.project_id
}