output "core_cluster_network_instances_lookup_id" {
  description = "Map of id values across all core_cluster_network_instances_lookup, keyed the same as var.core_cluster_network_instances_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_core_cluster_network_instances.core_cluster_network_instances_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "core_cluster_network_instances_lookup_cluster_network_id" {
  description = "Map of cluster_network_id values across all core_cluster_network_instances_lookup, keyed the same as var.core_cluster_network_instances_lookup except keys with no cluster_network_id are omitted"
  value       = { for k, v in data.oci_core_cluster_network_instances.core_cluster_network_instances_lookup : k => v.cluster_network_id if v.cluster_network_id != null && length(v.cluster_network_id) > 0 }
}
output "core_cluster_network_instances_lookup_compartment_id" {
  description = "Map of compartment_id values across all core_cluster_network_instances_lookup, keyed the same as var.core_cluster_network_instances_lookup except keys with no compartment_id are omitted"
  value       = { for k, v in data.oci_core_cluster_network_instances.core_cluster_network_instances_lookup : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "core_cluster_network_instances_lookup_display_name" {
  description = "Map of display_name values across all core_cluster_network_instances_lookup, keyed the same as var.core_cluster_network_instances_lookup except keys with no display_name are omitted"
  value       = { for k, v in data.oci_core_cluster_network_instances.core_cluster_network_instances_lookup : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "core_cluster_network_instances_lookup_filter" {
  description = "Map of filter values across all core_cluster_network_instances_lookup, keyed the same as var.core_cluster_network_instances_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_core_cluster_network_instances.core_cluster_network_instances_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "core_cluster_network_instances_lookup_instances" {
  description = "Map of instances values across all core_cluster_network_instances_lookup, keyed the same as var.core_cluster_network_instances_lookup except keys with no instances are omitted"
  value       = { for k, v in data.oci_core_cluster_network_instances.core_cluster_network_instances_lookup : k => v.instances if v.instances != null && length(v.instances) > 0 }
}

