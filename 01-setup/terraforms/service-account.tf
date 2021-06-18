resource "google_service_account" "github-action" {
  account_id   = "github-action"
  display_name = "Github action service account"
}