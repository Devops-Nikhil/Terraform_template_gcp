resource "google_storage_bucket" "balti" {
  name          = "mybalti"
  location      = "US"
  force_destroy = true
 
    uniform_bucket_level_access = true


#   public_access_prevention = "enforced"

  lifecycle_rule {
    condition {
      age = 3
    }
    action {
      type = "Delete"
    }
  }

  lifecycle_rule {
    condition {
      age = 1
    }
    action {
      type = "AbortIncompleteMultipartUpload"
    }
  }
}
