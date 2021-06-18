resource "google_service_account" "github-action" {
  account_id   = "github-action"
  display_name = "Github action service account"
}

resource "google_project_iam_member" "github-action-with-role" {
  role = "roles/owner"
  member = "serviceAccount:${google_service_account.github-action.email}"
}