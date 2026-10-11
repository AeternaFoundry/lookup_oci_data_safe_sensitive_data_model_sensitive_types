data "oci_data_safe_sensitive_data_model_sensitive_types" "data_safe_sensitive_data_model_sensitive_types_lookup" {
  for_each = var.data_safe_sensitive_data_model_sensitive_types_lookup

  sensitive_data_model_id = each.value.sensitive_data_model_id
  sensitive_type_id       = each.value.sensitive_type_id

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

