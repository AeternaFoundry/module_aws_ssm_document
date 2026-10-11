variable "ssm_documents" {
  description = <<EOT
Map of ssm_documents, attributes below
Required:
    - content
    - document_type
    - name
Optional:
    - document_format
    - permissions
    - region
    - tags
    - tags_all
    - target_type
    - version_name
    - attachments_source (block):
        - key (required)
        - name (optional)
        - values (required)
EOT

  type = map(object({
    content         = string
    document_type   = string
    name            = string
    document_format = optional(string)
    permissions     = optional(map(string))
    region          = optional(string)
    tags            = optional(map(string))
    tags_all        = optional(map(string))
    target_type     = optional(string)
    version_name    = optional(string)
    attachments_source = optional(list(object({
      key    = string
      name   = optional(string)
      values = list(string)
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.ssm_documents : (
        v.attachments_source == null || (length(v.attachments_source) <= 20)
      )
    ])
    error_message = "Each attachments_source list must contain at most 20 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.ssm_documents : (
        v.target_type == null || ((can(regex("^\\/[\\w\\.\\-\\:\\/]*$", v.target_type))) && (length(v.target_type) >= 1 && length(v.target_type) <= 200))
      )
    ])
    error_message = "all of: must contain a forward slash optionally followed by a resource type such as AWS::EC2::Instance; must be between 1 and 200 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.ssm_documents : (
        v.version_name == null || ((can(regex("^[0-9A-Za-z_.-]{3,128}$", v.version_name))) && (length(v.version_name) >= 3 && length(v.version_name) <= 128))
      )
    ])
    error_message = "all of: must contain only alphanumeric, underscore, hyphen, or period characters; must be between 3 and 128 characters"
  }
  # Note: 6 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

