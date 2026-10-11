output "catalog_entries_id" {
  description = "Map of id values across all catalog_entries, keyed the same as var.catalog_entries except keys with no id are omitted"
  value       = { for k, v in consul_catalog_entry.catalog_entries : k => v.id if v.id != null && length(v.id) > 0 }
}
output "catalog_entries_address" {
  description = "Map of address values across all catalog_entries, keyed the same as var.catalog_entries except keys with no address are omitted"
  value       = { for k, v in consul_catalog_entry.catalog_entries : k => v.address if v.address != null && length(v.address) > 0 }
}
output "catalog_entries_datacenter" {
  description = "Map of datacenter values across all catalog_entries, keyed the same as var.catalog_entries except keys with no datacenter are omitted"
  value       = { for k, v in consul_catalog_entry.catalog_entries : k => v.datacenter if v.datacenter != null && length(v.datacenter) > 0 }
}
output "catalog_entries_node" {
  description = "Map of node values across all catalog_entries, keyed the same as var.catalog_entries except keys with no node are omitted"
  value       = { for k, v in consul_catalog_entry.catalog_entries : k => v.node if v.node != null && length(v.node) > 0 }
}
output "catalog_entries_service" {
  description = "Map of service values across all catalog_entries, keyed the same as var.catalog_entries except keys with no service are omitted"
  value       = { for k, v in consul_catalog_entry.catalog_entries : k => v.service if v.service != null && length(v.service) > 0 }
}
output "catalog_entries_token" {
  description = "Map of token values across all catalog_entries, keyed the same as var.catalog_entries except keys with no token are omitted"
  value       = { for k, v in consul_catalog_entry.catalog_entries : k => v.token if v.token != null && length(v.token) > 0 }
  sensitive   = true
}

