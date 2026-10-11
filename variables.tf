variable "core_cluster_network_instances_lookup" {
  description = <<EOT
Map of core_cluster_network_instances_lookup, attributes below
Required:
    - cluster_network_id
    - compartment_id
Optional:
    - display_name
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    cluster_network_id = string
    compartment_id     = string
    display_name       = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

