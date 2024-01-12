terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "5.10.0"
    }
  }
}

provider "google" {
  project = "test-dev-54830"
  region  = "us-east1"
  zone    = "us-east1-b"
}

