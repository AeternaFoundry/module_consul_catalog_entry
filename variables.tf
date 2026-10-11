variable "catalog_entries" {
  description = <<EOT
Map of catalog_entries, attributes below
Required:
    - address
    - node
Optional:
    - datacenter
    - token
    - service (block):
        - address (optional)
        - id (optional)
        - name (required)
        - port (optional)
        - tags (optional)
EOT

  type = map(object({
    address    = string
    node       = string
    datacenter = optional(string)
    token      = optional(string)
    service = optional(list(object({
      address = optional(string)
      id      = optional(string)
      name    = string
      port    = optional(number)
      tags    = optional(set(string))
    })))
  }))
}

