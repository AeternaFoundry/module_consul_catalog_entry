resource "consul_catalog_entry" "catalog_entries" {
  for_each = var.catalog_entries

  address    = each.value.address
  node       = each.value.node
  datacenter = each.value.datacenter
  token      = each.value.token

  dynamic "service" {
    for_each = each.value.service != null ? each.value.service : []
    content {
      address = service.value.address
      id      = service.value.id
      name    = service.value.name
      port    = service.value.port
      tags    = service.value.tags
    }
  }
}

