output "healthcare_datasets_id" {
  description = "Map of id values across all healthcare_datasets, keyed the same as var.healthcare_datasets except keys with no id are omitted"
  value       = { for k, v in google_healthcare_dataset.healthcare_datasets : k => v.id if v.id != null && length(v.id) > 0 }
}
output "healthcare_datasets_deletion_policy" {
  description = "Map of deletion_policy values across all healthcare_datasets, keyed the same as var.healthcare_datasets except keys with no deletion_policy are omitted"
  value       = { for k, v in google_healthcare_dataset.healthcare_datasets : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "healthcare_datasets_encryption_spec" {
  description = "Map of encryption_spec values across all healthcare_datasets, keyed the same as var.healthcare_datasets except keys with no encryption_spec are omitted"
  value       = { for k, v in google_healthcare_dataset.healthcare_datasets : k => one(v.encryption_spec) if v.encryption_spec != null && length(v.encryption_spec) > 0 }
}
output "healthcare_datasets_location" {
  description = "Map of location values across all healthcare_datasets, keyed the same as var.healthcare_datasets except keys with no location are omitted"
  value       = { for k, v in google_healthcare_dataset.healthcare_datasets : k => v.location if v.location != null && length(v.location) > 0 }
}
output "healthcare_datasets_name" {
  description = "Map of name values across all healthcare_datasets, keyed the same as var.healthcare_datasets except keys with no name are omitted"
  value       = { for k, v in google_healthcare_dataset.healthcare_datasets : k => v.name if v.name != null && length(v.name) > 0 }
}
output "healthcare_datasets_project" {
  description = "Map of project values across all healthcare_datasets, keyed the same as var.healthcare_datasets except keys with no project are omitted"
  value       = { for k, v in google_healthcare_dataset.healthcare_datasets : k => v.project if v.project != null && length(v.project) > 0 }
}
output "healthcare_datasets_self_link" {
  description = "Map of self_link values across all healthcare_datasets, keyed the same as var.healthcare_datasets except keys with no self_link are omitted"
  value       = { for k, v in google_healthcare_dataset.healthcare_datasets : k => v.self_link if v.self_link != null && length(v.self_link) > 0 }
}
output "healthcare_datasets_time_zone" {
  description = "Map of time_zone values across all healthcare_datasets, keyed the same as var.healthcare_datasets except keys with no time_zone are omitted"
  value       = { for k, v in google_healthcare_dataset.healthcare_datasets : k => v.time_zone if v.time_zone != null && length(v.time_zone) > 0 }
}

