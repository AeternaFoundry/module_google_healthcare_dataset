resource "google_healthcare_dataset" "healthcare_datasets" {
  for_each = var.healthcare_datasets

  location        = each.value.location
  name            = each.value.name
  deletion_policy = each.value.deletion_policy
  project         = each.value.project
  time_zone       = each.value.time_zone

  dynamic "encryption_spec" {
    for_each = each.value.encryption_spec != null ? [each.value.encryption_spec] : []
    content {
      kms_key_name = encryption_spec.value.kms_key_name
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

