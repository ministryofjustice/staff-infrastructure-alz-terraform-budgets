<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | =1.9.8 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | 4.18.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 4.18.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_cost_budgets"></a> [cost\_budgets](#module\_cost\_budgets) | ../../modules/budgets | n/a |

## Resources

| Name | Type |
|------|------|
| [azurerm_monitor_action_group.existing_ag](https://registry.terraform.io/providers/hashicorp/azurerm/4.18.0/docs/data-sources/monitor_action_group) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_action_group_name"></a> [action\_group\_name](#input\_action\_group\_name) | The existing Action Group name to attach budget notifications to. | `string` | n/a | yes |
| <a name="input_action_group_rg"></a> [action\_group\_rg](#input\_action\_group\_rg) | The Resource Group in which the existing Action Group is located. | `string` | n/a | yes |
| <a name="input_budgets"></a> [budgets](#input\_budgets) | Map of budget definitions for the Dev environment. | <pre>map(object({<br/>    subscription_id = string<br/>    amount          = number<br/>    resource_groups = list(string)<br/>  }))</pre> | `{}` | no |
| <a name="input_contact_emails"></a> [contact\_emails](#input\_contact\_emails) | List of email addresses that receive Dev budget alerts. | `list(string)` | <pre>[<br/>  "ALZ4LS@justice.gov.uk"<br/>]</pre> | no |
| <a name="input_end_date"></a> [end\_date](#input\_end\_date) | n/a | `string` | `"2026-03-31T00:00:00Z"` | no |
| <a name="input_start_date"></a> [start\_date](#input\_start\_date) | 2) Start and end dates for the budgets | `string` | `"2025-04-01T00:00:00Z"` | no |
| <a name="input_subscription_id"></a> [subscription\_id](#input\_subscription\_id) | This is actually the hub subscription id | `any` | n/a | yes |
| <a name="input_tenant_id"></a> [tenant\_id](#input\_tenant\_id) | Tenant id | `any` | n/a | yes |
| <a name="input_threshold_actual"></a> [threshold\_actual](#input\_threshold\_actual) | Alert threshold for actual usage in Dev (e.g. 0.75 = 75%). | `number` | `0.75` | no |
| <a name="input_threshold_forecast"></a> [threshold\_forecast](#input\_threshold\_forecast) | Alert threshold for forecast usage in Dev (e.g. 0.85 = 85%). | `number` | `0.85` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->