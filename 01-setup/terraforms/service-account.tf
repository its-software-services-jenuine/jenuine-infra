resource "google_service_account" "service_account" {
  account_id   = "github-action"
  display_name = "Github action service account"
}