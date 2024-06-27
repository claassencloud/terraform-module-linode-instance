variable "linode_region" {
  description = "The linode region where resources are being managed"
  type        = string
}

variable "linode_instance_count" {
  description = "The count of inatances to create"
  type        = number
}

variable "linode_instance_label" {
  description = "The label for the Linode instance"
  type        = string
}

variable "linode_instance_image" {
  description = "The image to use with the Linode instance"
  type        = string
}

variable "linode_instance_type" {
  description = "The linode instance type"
  type        = string
}

variable "linode_instance_authorized_keys" {
  description = "A list of public ssh keys for authorized_keys"
  type        = list(string)
}
