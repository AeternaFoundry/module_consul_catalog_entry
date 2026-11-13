output "catalog_entries_id" {
  description = "Map of id values across all catalog_entries, keyed the same as var.catalog_entries"
  value       = { for k, v in consul_catalog_entry.catalog_entries : k => v.id }
}
output "catalog_entries_address" {
  description = "Map of address values across all catalog_entries, keyed the same as var.catalog_entries"
  value       = { for k, v in consul_catalog_entry.catalog_entries : k => v.address }
}
output "catalog_entries_datacenter" {
  description = "Map of datacenter values across all catalog_entries, keyed the same as var.catalog_entries"
  value       = { for k, v in consul_catalog_entry.catalog_entries : k => v.datacenter }
}
output "catalog_entries_node" {
  description = "Map of node values across all catalog_entries, keyed the same as var.catalog_entries"
  value       = { for k, v in consul_catalog_entry.catalog_entries : k => v.node }
}
output "catalog_entries_service" {
  description = "Map of service values across all catalog_entries, keyed the same as var.catalog_entries"
  value       = { for k, v in consul_catalog_entry.catalog_entries : k => v.service }
}
output "catalog_entries_token" {
  description = "Map of token values across all catalog_entries, keyed the same as var.catalog_entries"
  value       = { for k, v in consul_catalog_entry.catalog_entries : k => v.token }
  sensitive   = true
}

