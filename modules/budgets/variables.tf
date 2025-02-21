variable "budget_map" {
  type = map(object({
    subscription_id = string
    amount          = number
    resource_groups = list(string)
  }))
  description = <<EOT
A map of budgets keyed by the budget name.

Each value must contain:
  - subscription_id: The target subscription for the budget
  - amount: The monthly budget amount
  - resource_groups: A list of RG names (empty = all RGs in the sub)
EOT
  default = {}
}

variable "time_grain" {
  type        = string
  default     = "Monthly"
  description = "Budget reset period (e.g., Monthly, Quarterly, Annually)."
}

variable "start_date" {
  type        = string
  default     = "2025-04-01"
  description = "Start date (YYYY-MM-DD) for the budget's first evaluation."
}

variable "end_date" {
  type        = string
  default     = "2026-03-31"
  description = "End date (YYYY-MM-DD) when the budget stops evaluating."
}

variable "threshold_actual" {
  type        = number
  default     = 0.75
  description = "Alert threshold for actual costs (e.g., 0.75 = 75%)."
}

variable "threshold_forecast" {
  type        = number
  default     = 0.85
  description = "Alert threshold for forecast costs (e.g., 0.85 = 85%)."
}

variable "contact_emails" {
  type        = list(string)
  default     = ["ALZ4LS@justice.gov.uk"]
  description = "List of email addresses to notify when thresholds are met."
}
