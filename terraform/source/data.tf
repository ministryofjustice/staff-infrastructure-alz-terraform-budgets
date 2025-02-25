data "azurerm_monitor_action_group" "existing_ag" {
  name                = var.action_group_name
  resource_group_name = var.action_group_rg
  # Optionally specify subscription_id if action group is in different subscription then current provider:
  # subscription_id = var.action_group_subscription_id
}