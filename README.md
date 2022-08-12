# terraform-module-template

<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

No providers.

## Modules

No modules.

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_fallback"></a> [fallback](#input\_fallback) | Value to return if a git log does not exist | `string` | `"latest"` | no |
| <a name="input_path"></a> [path](#input\_path) | Location of a directory containing a .git folder | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_hash"></a> [hash](#output\_hash) | SHA1 commit hash of the targeted repository's HEAD ref |
<!-- END_TF_DOCS -->