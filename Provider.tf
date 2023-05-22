terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.64.0"
    }
  }
}
provider "google" {
  project     = "upbeat-palace-384312"
  region      = "us-central1"
  zone        = "us-central1-a"
  credentials = "./upbeat-palace-384312-6ca9312fb05d.json"
}
