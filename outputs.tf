output "pinpoint_adm_channels_id" {
  description = "Map of id values across all pinpoint_adm_channels, keyed the same as var.pinpoint_adm_channels"
  value       = { for k, v in aws_pinpoint_adm_channel.pinpoint_adm_channels : k => v.id if v.id != null && length(v.id) > 0 }
}
output "pinpoint_adm_channels_application_id" {
  description = "Map of application_id values across all pinpoint_adm_channels, keyed the same as var.pinpoint_adm_channels"
  value       = { for k, v in aws_pinpoint_adm_channel.pinpoint_adm_channels : k => v.application_id if v.application_id != null && length(v.application_id) > 0 }
}
output "pinpoint_adm_channels_client_id" {
  description = "Map of client_id values across all pinpoint_adm_channels, keyed the same as var.pinpoint_adm_channels"
  value       = { for k, v in aws_pinpoint_adm_channel.pinpoint_adm_channels : k => v.client_id if v.client_id != null && length(v.client_id) > 0 }
  sensitive   = true
}
output "pinpoint_adm_channels_client_secret" {
  description = "Map of client_secret values across all pinpoint_adm_channels, keyed the same as var.pinpoint_adm_channels"
  value       = { for k, v in aws_pinpoint_adm_channel.pinpoint_adm_channels : k => v.client_secret if v.client_secret != null && length(v.client_secret) > 0 }
  sensitive   = true
}
output "pinpoint_adm_channels_enabled" {
  description = "Map of enabled values across all pinpoint_adm_channels, keyed the same as var.pinpoint_adm_channels"
  value       = { for k, v in aws_pinpoint_adm_channel.pinpoint_adm_channels : k => v.enabled if v.enabled != null }
}
output "pinpoint_adm_channels_region" {
  description = "Map of region values across all pinpoint_adm_channels, keyed the same as var.pinpoint_adm_channels"
  value       = { for k, v in aws_pinpoint_adm_channel.pinpoint_adm_channels : k => v.region if v.region != null && length(v.region) > 0 }
}

