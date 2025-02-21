# modules/budgets/main.tf

resource "azurerm_cost_management_budget_subscription" "this" {
  for_each = var.budget_map

  name             = each.key
  subscription_id  = each.value.subscription_id
  amount           = each.value.amount
  time_grain       = var.time_grain
  start_date       = var.start_date
  end_date         = var.end_date

  # Filter for resource groups (if provided)
  dynamic "filter" {
    for_each = length(each.value.resource_groups) > 0 ? [each.value.resource_groups] : []
    content {
      dimension {
        name     = "ResourceGroupName"
        operator = "In"
        values   = each.value.resource_groups
      }
    }
  }

  # Notification blocks, etc., remain the same
  notification {
    enabled         = true
    operator        = "GreaterThanOrEqualTo"
    threshold       = var.threshold_actual
    contact_emails  = var.contact_emails
    threshold_type  = "Actual"
  }

  notification {
    enabled         = true
    operator        = "GreaterThanOrEqualTo"
    threshold       = var.threshold_forecast
    contact_emails  = var.contact_emails
    threshold_type  = "Forecasted"
  }
}
