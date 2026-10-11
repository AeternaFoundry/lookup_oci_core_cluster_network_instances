data "oci_core_cluster_network_instances" "core_cluster_network_instances_lookup" {
  for_each = var.core_cluster_network_instances_lookup

  cluster_network_id = each.value.cluster_network_id
  compartment_id     = each.value.compartment_id
  display_name       = each.value.display_name

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

