variable "tf_importers" {
  description = <<EOT
Map of tf_importers, attributes below
Optional:
    - output_path
    - resources
    - timeouts (block):
        - create (optional)
EOT

  type = map(object({
    output_path = optional(string)
    resources   = optional(list(string))
    timeouts = optional(object({
      create = optional(string)
    }))
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

