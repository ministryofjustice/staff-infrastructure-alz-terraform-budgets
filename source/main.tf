module "cost_budgets" {
  source = "../../modules/budgets"

  # Pass in the budgets map
  budget_map = var.budgets

  # Optionally override module defaults for dates, thresholds, etc.
  start_date         = var.start_date
  end_date           = var.end_date
  threshold_actual   = var.threshold_actual
  threshold_forecast = var.threshold_forecast
  contact_emails     = var.contact_emails
}