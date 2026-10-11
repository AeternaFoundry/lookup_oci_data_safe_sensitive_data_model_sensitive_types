variable "data_safe_sensitive_data_model_sensitive_types_lookup" {
  description = <<EOT
Map of data_safe_sensitive_data_model_sensitive_types_lookup, attributes below
Required:
    - sensitive_data_model_id
Optional:
    - sensitive_type_id
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    sensitive_data_model_id = string
    sensitive_type_id       = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

