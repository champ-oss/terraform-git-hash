# terraform-module-template

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.5.0 |
| <a name="requirement_external"></a> [external](#requirement\_external) | >= 2.3.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_external"></a> [external](#provider\_external) | >= 2.3.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [external_external.tree_hash](https://registry.terraform.io/providers/hashicorp/external/latest/docs/data-sources/external) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_enable_tree_hash"></a> [enable\_tree\_hash](#input\_enable\_tree\_hash) | Run git to look up the tree hash | `bool` | `true` | no |
| <a name="input_fallback"></a> [fallback](#input\_fallback) | Value to return if a git log does not exist | `string` | `"latest"` | no |
| <a name="input_path"></a> [path](#input\_path) | Location of a directory containing a .git folder | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_hash"></a> [hash](#output\_hash) | SHA1 commit hash of the targeted repository's HEAD ref |
| <a name="output_tree_hash"></a> [tree\_hash](#output\_tree\_hash) | SHA1 git tree hash of the targeted repository's HEAD commit. Identical for commits with identical files. |
<!-- END_TF_DOCS -->