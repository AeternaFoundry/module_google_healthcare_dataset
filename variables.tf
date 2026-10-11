variable "healthcare_datasets" {
  description = <<EOT
Map of healthcare_datasets, attributes below
Required:
    - location
    - name
Optional:
    - deletion_policy
    - project
    - time_zone
    - encryption_spec (block):
        - kms_key_name (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    location        = string
    name            = string
    deletion_policy = optional(string)
    project         = optional(string)
    time_zone       = optional(string)
    encryption_spec = optional(object({
      kms_key_name = optional(string)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

