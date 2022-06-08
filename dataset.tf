resource "google_bigquery_dataset" "default" {
  project                     = var.project-id
  dataset_id                  = "dataset_test"
  friendly_name               = "dataset-test"
  description                 = "data test test "
  location                    = "EU"
}

