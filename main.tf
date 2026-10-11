resource "confluent_tf_importer" "tf_importers" {
  for_each = var.tf_importers

  output_path = each.value.output_path
  resources   = each.value.resources

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
    }
  }
}

