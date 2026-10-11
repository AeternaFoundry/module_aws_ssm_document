output "ssm_documents_id" {
  description = "Map of id values across all ssm_documents, keyed the same as var.ssm_documents"
  value       = { for k, v in aws_ssm_document.ssm_documents : k => v.id if v.id != null && length(v.id) > 0 }
}
output "ssm_documents_arn" {
  description = "Map of arn values across all ssm_documents, keyed the same as var.ssm_documents"
  value       = { for k, v in aws_ssm_document.ssm_documents : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "ssm_documents_attachments_source" {
  description = "Map of attachments_source values across all ssm_documents, keyed the same as var.ssm_documents"
  value       = { for k, v in aws_ssm_document.ssm_documents : k => v.attachments_source if v.attachments_source != null && length(v.attachments_source) > 0 }
}
output "ssm_documents_content" {
  description = "Map of content values across all ssm_documents, keyed the same as var.ssm_documents"
  value       = { for k, v in aws_ssm_document.ssm_documents : k => v.content if v.content != null && length(v.content) > 0 }
}
output "ssm_documents_created_date" {
  description = "Map of created_date values across all ssm_documents, keyed the same as var.ssm_documents"
  value       = { for k, v in aws_ssm_document.ssm_documents : k => v.created_date if v.created_date != null && length(v.created_date) > 0 }
}
output "ssm_documents_default_version" {
  description = "Map of default_version values across all ssm_documents, keyed the same as var.ssm_documents"
  value       = { for k, v in aws_ssm_document.ssm_documents : k => v.default_version if v.default_version != null && length(v.default_version) > 0 }
}
output "ssm_documents_description" {
  description = "Map of description values across all ssm_documents, keyed the same as var.ssm_documents"
  value       = { for k, v in aws_ssm_document.ssm_documents : k => v.description if v.description != null && length(v.description) > 0 }
}
output "ssm_documents_document_format" {
  description = "Map of document_format values across all ssm_documents, keyed the same as var.ssm_documents"
  value       = { for k, v in aws_ssm_document.ssm_documents : k => v.document_format if v.document_format != null && length(v.document_format) > 0 }
}
output "ssm_documents_document_type" {
  description = "Map of document_type values across all ssm_documents, keyed the same as var.ssm_documents"
  value       = { for k, v in aws_ssm_document.ssm_documents : k => v.document_type if v.document_type != null && length(v.document_type) > 0 }
}
output "ssm_documents_document_version" {
  description = "Map of document_version values across all ssm_documents, keyed the same as var.ssm_documents"
  value       = { for k, v in aws_ssm_document.ssm_documents : k => v.document_version if v.document_version != null && length(v.document_version) > 0 }
}
output "ssm_documents_hash" {
  description = "Map of hash values across all ssm_documents, keyed the same as var.ssm_documents"
  value       = { for k, v in aws_ssm_document.ssm_documents : k => v.hash if v.hash != null && length(v.hash) > 0 }
}
output "ssm_documents_hash_type" {
  description = "Map of hash_type values across all ssm_documents, keyed the same as var.ssm_documents"
  value       = { for k, v in aws_ssm_document.ssm_documents : k => v.hash_type if v.hash_type != null && length(v.hash_type) > 0 }
}
output "ssm_documents_latest_version" {
  description = "Map of latest_version values across all ssm_documents, keyed the same as var.ssm_documents"
  value       = { for k, v in aws_ssm_document.ssm_documents : k => v.latest_version if v.latest_version != null && length(v.latest_version) > 0 }
}
output "ssm_documents_name" {
  description = "Map of name values across all ssm_documents, keyed the same as var.ssm_documents"
  value       = { for k, v in aws_ssm_document.ssm_documents : k => v.name if v.name != null && length(v.name) > 0 }
}
output "ssm_documents_owner" {
  description = "Map of owner values across all ssm_documents, keyed the same as var.ssm_documents"
  value       = { for k, v in aws_ssm_document.ssm_documents : k => v.owner if v.owner != null && length(v.owner) > 0 }
}
output "ssm_documents_parameter" {
  description = "Map of parameter values across all ssm_documents, keyed the same as var.ssm_documents"
  value       = { for k, v in aws_ssm_document.ssm_documents : k => v.parameter if v.parameter != null && length(v.parameter) > 0 }
}
output "ssm_documents_permissions" {
  description = "Map of permissions values across all ssm_documents, keyed the same as var.ssm_documents"
  value       = { for k, v in aws_ssm_document.ssm_documents : k => v.permissions if v.permissions != null && length(v.permissions) > 0 }
}
output "ssm_documents_platform_types" {
  description = "Map of platform_types values across all ssm_documents, keyed the same as var.ssm_documents"
  value       = { for k, v in aws_ssm_document.ssm_documents : k => v.platform_types if v.platform_types != null && length(v.platform_types) > 0 }
}
output "ssm_documents_region" {
  description = "Map of region values across all ssm_documents, keyed the same as var.ssm_documents"
  value       = { for k, v in aws_ssm_document.ssm_documents : k => v.region if v.region != null && length(v.region) > 0 }
}
output "ssm_documents_schema_version" {
  description = "Map of schema_version values across all ssm_documents, keyed the same as var.ssm_documents"
  value       = { for k, v in aws_ssm_document.ssm_documents : k => v.schema_version if v.schema_version != null && length(v.schema_version) > 0 }
}
output "ssm_documents_status" {
  description = "Map of status values across all ssm_documents, keyed the same as var.ssm_documents"
  value       = { for k, v in aws_ssm_document.ssm_documents : k => v.status if v.status != null && length(v.status) > 0 }
}
output "ssm_documents_tags" {
  description = "Map of tags values across all ssm_documents, keyed the same as var.ssm_documents"
  value       = { for k, v in aws_ssm_document.ssm_documents : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "ssm_documents_tags_all" {
  description = "Map of tags_all values across all ssm_documents, keyed the same as var.ssm_documents"
  value       = { for k, v in aws_ssm_document.ssm_documents : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "ssm_documents_target_type" {
  description = "Map of target_type values across all ssm_documents, keyed the same as var.ssm_documents"
  value       = { for k, v in aws_ssm_document.ssm_documents : k => v.target_type if v.target_type != null && length(v.target_type) > 0 }
}
output "ssm_documents_version_name" {
  description = "Map of version_name values across all ssm_documents, keyed the same as var.ssm_documents"
  value       = { for k, v in aws_ssm_document.ssm_documents : k => v.version_name if v.version_name != null && length(v.version_name) > 0 }
}

