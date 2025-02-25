###############################################################################
# File: modules/budgets/variables.tf
###############################################################################

variable "budget_map" {
  type = map(object({
    subscription_id = string
    amount          = number
    resource_groups = list(string)
  }))
  default     = {}
  description = <<EOT
A map of budget configurations, keyed by budget name.
Each item must have:
  - subscription_id: string
  - amount: monthly budget in the currency of your subscription
  - resource_groups: list of RG names to scope the budget to (empty => entire subscription)
EOT
}

variable "time_grain" {
  type        = string
  default     = "Monthly"  # can be Monthly, Quarterly, or Annually
  description = "Period over which the budget recurs (Monthly, Quarterly, Annually)."
}

variable "start_date" {
  type        = string
  default     = "2025-04-01T00:00:00Z"
  description = "Start date in 'YYYY-MM-DDTHH:MM:SSZ' format."
}

variable "end_date" {
  type        = string
  default     = "2026-03-31T00:00:00Z"
  description = "End date in 'YYYY-MM-DDTHH:MM:SSZ' format."
}

variable "threshold_actual" {
  type        = number
  default     = 75.0
  description = "Alert threshold for actual usage (percentage float, e.g. 75.0)."
}

variable "threshold_forecast" {
  type        = number
  default     = 85.0
  description = "Alert threshold for forecast usage (percentage float, e.g. 85.0)."
}

variable "contact_emails" {
  type        = list(string)
  default     = ["ALZ4LS@justice.gov.uk"]
  description = "Email recipients for budget alerts."
}

variable "contact_groups" {
  type        = list(string)
  default     = []
  description = "List of Action Group IDs that budget alerts should contact."
}