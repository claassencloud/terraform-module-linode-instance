# Terraform Module Linode Instance
A Terraform module to manage Linode instance resources

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.5 |
| <a name="requirement_linode"></a> [linode](#requirement\_linode) | ~> 2.22 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_linode"></a> [linode](#provider\_linode) | ~> 2.22 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [linode_instance.instance](https://registry.terraform.io/providers/linode/linode/latest/docs/resources/instance) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_linode_instance_authorized_keys"></a> [linode\_instance\_authorized\_keys](#input\_linode\_instance\_authorized\_keys) | A list of public ssh keys for authorized\_keys | `list(string)` | n/a | yes |
| <a name="input_linode_instance_count"></a> [linode\_instance\_count](#input\_linode\_instance\_count) | The count of inatances to create | `number` | n/a | yes |
| <a name="input_linode_instance_image"></a> [linode\_instance\_image](#input\_linode\_instance\_image) | The image to use with the Linode instance | `string` | n/a | yes |
| <a name="input_linode_instance_label"></a> [linode\_instance\_label](#input\_linode\_instance\_label) | The label for the Linode instance | `string` | n/a | yes |
| <a name="input_linode_instance_type"></a> [linode\_instance\_type](#input\_linode\_instance\_type) | The linode instance type | `string` | n/a | yes |
| <a name="input_linode_region"></a> [linode\_region](#input\_linode\_region) | The linode region where resources are being managed | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_linode_instance_ids"></a> [linode\_instance\_ids](#output\_linode\_instance\_ids) | n/a |
<!-- END_TF_DOCS -->

## Example Usage
```go
module "my-instance" {
  source                          = "../terraform-module-linode-instance"
  linode_region                   = "my-linode-region"
  linode_instance_count           = 1
  linode_instance_label           = "my-instance"
  linode_instance_type            = "linode/ubuntu22.04"
  linode_instance_image           = "g6-nanode-1"
  linode_instance_authorized_keys = "my-ssh-public-key"
}
```
