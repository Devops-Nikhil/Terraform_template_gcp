resource "google_compute_instance" "tf-instance" {
  name         = "test"
  machine_type = "n1-standard-1"
  zone         = "us-central1-a"
  tags = ["new", "name"]

    labels = {
    environment = "dev"
    owner       = "nik"
  }


   metadata = {
    foo = "car"
    # Add normal instance tags here
    tags = "tag1,tag2"
  }

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        my_label = "value"
      }
    }
  }
  network_interface {
    network = "default"
       access_config {
      // Set the IP address to a specific value
      nat_ip = ""
    }
  }
}
