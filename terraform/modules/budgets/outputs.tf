output "budget_ids" {
  description = "List of resource IDs for all created budgets."
  value       = [for b in azurerm_consumption_budget_subscription.this : b.id]
}

output "budget_names" {
  description = "List of names for all created budgets."
  value       = keys(azurerm_consumption_budget_subscription.this)
}
