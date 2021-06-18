resource "google_compute_firewall" "k8s-manager-to-cluster" {
  name    = "k8s-manager-to-cluster"
  network = "default"
  priority = 1000

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["22", "443", "6443", "30000-60000"]
  }

  source_tags = ["k8s-manager"]
  target_tags = ["k8s-master", "k8s-worker"]
}