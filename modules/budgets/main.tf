###############################################################################
# File: modules/budgets/main.tf
###############################################################################
# This creates a subscription-level consumption budget for each entry in var.budget_map,
# including optional resource group filters and notifications for both Actual & Forecast usage.
###############################################################################

resource "azurerm_consumption_budget_subscription" "this" {
  # We'll iterate over a map of budgets passed in by the environment
  for_each = var.budget_map

  name            = each.key
  subscription_id = each.value.subscription_id
  amount          = each.value.amount
  time_grain      = var.time_grain

  # consumption_budget requires a time_period block
  time_period {
    # Use full date/time format. Example: 2025-04-01T00:00:00Z
    start_date = var.start_date
    end_date   = var.end_date
  }

  # Optional filters for resource groups or tags
  # If resource_groups is non-empty, we define a dimension filter
  dynamic "filter" {
    for_each = length(each.value.resource_groups) > 0 ? [each.value.resource_groups] : []
    content {
      dimension {
        name   = "ResourceGroupName"
        values = each.value.resource_groups
      }
      # Optionally add tag { name = "...", values = [...] } if needed
    }
  }

  # Example: 75% Actual usage alert
  # "threshold" is a float representing the % threshold (e.g., 75.0)
  notification {
    threshold      = var.threshold_actual
    operator       = "GreaterThan"
    enabled        = true
    threshold_type = "Actual"

    # Provide a list of email addresses to alert
    contact_emails = var.contact_emails

    # contact_groups (Action Groups) or contact_roles (e.g. ["Owner"])
    contact_groups = var.contact_groups
  }

  # Example: 85% Forecast usage alert
  notification {
    threshold      = var.threshold_forecast
    operator       = "GreaterThan"
    enabled        = true
    threshold_type = "Forecasted"

    contact_emails = var.contact_emails

    # contact_groups (Action Groups) or contact_roles (e.g. ["Owner"])
    contact_groups = var.contact_groups
  }
}
