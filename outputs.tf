output "tf_importers_id" {
  description = "Map of id values across all tf_importers, keyed the same as var.tf_importers except keys with no id are omitted"
  value       = { for k, v in confluent_tf_importer.tf_importers : k => v.id if v.id != null && length(v.id) > 0 }
}
output "tf_importers_output_path" {
  description = "Map of output_path values across all tf_importers, keyed the same as var.tf_importers except keys with no output_path are omitted"
  value       = { for k, v in confluent_tf_importer.tf_importers : k => v.output_path if v.output_path != null && length(v.output_path) > 0 }
}
output "tf_importers_resources" {
  description = "Map of resources values across all tf_importers, keyed the same as var.tf_importers except keys with no resources are omitted"
  value       = { for k, v in confluent_tf_importer.tf_importers : k => v.resources if v.resources != null && length(v.resources) > 0 }
}

