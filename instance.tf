resource "linode_instance" "instance" {
  count           = var.linode_instance_count
  label           = var.linode_instance_label
  image           = var.linode_instance_image
  region          = var.linode_region
  type            = var.linode_instance_type
  authorized_keys = var.linode_instance_authorized_keys
}
