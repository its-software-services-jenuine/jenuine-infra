resource "google_service_account" "github-action" {
  account_id   = "github-action"
  display_name = "Github action service account"
}

resource "google_project_iam_member" "github-action-with-role" {
  role = "roles/owner"
  member = "serviceAccount:${google_service_account.github-action.email}"
}

resource "google_service_account_key" "github-action-key" {
  service_account_id = google_service_account.github-action.name
  public_key_type    = "TYPE_X509_PEM_FILE"
}