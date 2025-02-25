<!-- BEGIN_TF_DOCS -->

## Requirements

No requirements.

## Providers

| Name                                                         | Version |
| ------------------------------------------------------------ | ------- |
| <a name="provider_azurerm"></a> [azurerm](#provider_azurerm) | n/a     |

## Modules

No modules.

## Resources

| Name                                                                                                                                                            | Type     |
| --------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------- |
| [azurerm_consumption_budget_subscription.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/consumption_budget_subscription) | resource |

## Inputs

| Name                                                                                    | Description                                                                                                                                                                                                                                                                     | Type                                                                                                                    | Default                                         | Required |
| --------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------- | :------: |
| <a name="input_budget_map"></a> [budget_map](#input_budget_map)                         | A map of budget configurations, keyed by budget name.<br/>Each item must have:<br/> - subscription_id: string<br/> - amount: monthly budget in the currency of your subscription<br/> - resource_groups: list of RG names to scope the budget to (empty => entire subscription) | <pre>map(object({<br/> subscription_id = string<br/> amount = number<br/> resource_groups = list(string)<br/> }))</pre> | `{}`                                            |    no    |
| <a name="input_contact_emails"></a> [contact_emails](#input_contact_emails)             | Email recipients for budget alerts.                                                                                                                                                                                                                                             | `list(string)`                                                                                                          | <pre>[<br/> "ALZ4LS@justice.gov.uk"<br/>]</pre> |    no    |
| <a name="input_contact_groups"></a> [contact_groups](#input_contact_groups)             | List of Action Group IDs that budget alerts should contact.                                                                                                                                                                                                                     | `list(string)`                                                                                                          | `[]`                                            |    no    |
| <a name="input_end_date"></a> [end_date](#input_end_date)                               | End date in 'YYYY-MM-DDTHH:MM:SSZ' format.                                                                                                                                                                                                                                      | `string`                                                                                                                | `"2026-03-31T00:00:00Z"`                        |    no    |
| <a name="input_start_date"></a> [start_date](#input_start_date)                         | Start date in 'YYYY-MM-DDTHH:MM:SSZ' format.                                                                                                                                                                                                                                    | `string`                                                                                                                | `"2025-04-01T00:00:00Z"`                        |    no    |
| <a name="input_threshold_actual"></a> [threshold_actual](#input_threshold_actual)       | Alert threshold for actual usage (percentage float, e.g. 75.0).                                                                                                                                                                                                                 | `number`                                                                                                                | `75`                                            |    no    |
| <a name="input_threshold_forecast"></a> [threshold_forecast](#input_threshold_forecast) | Alert threshold for forecast usage (percentage float, e.g. 85.0).                                                                                                                                                                                                               | `number`                                                                                                                | `85`                                            |    no    |
| <a name="input_time_grain"></a> [time_grain](#input_time_grain)                         | Period over which the budget recurs (Monthly, Quarterly, Annually).                                                                                                                                                                                                             | `string`                                                                                                                | `"Monthly"`                                     |    no    |

## Outputs

| Name                                                                    | Description                                   |
| ----------------------------------------------------------------------- | --------------------------------------------- |
| <a name="output_budget_ids"></a> [budget_ids](#output_budget_ids)       | List of resource IDs for all created budgets. |
| <a name="output_budget_names"></a> [budget_names](#output_budget_names) | List of names for all created budgets.        |

<!-- END_TF_DOCS -->
