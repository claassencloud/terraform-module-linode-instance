output "linode_instance_ids" {
  value = [for instance in linode_instance.instance : instance.id]
}
