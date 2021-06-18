resource "google_service_account" "github-action" {
  account_id   = "github-action"
  display_name = "Github action service account"
}

resource "google_service_account_iam_binding" "github-action-iam" {
  service_account_id = google_service_account.github-action.name
  role               = "roles/owner"

  members = []
}