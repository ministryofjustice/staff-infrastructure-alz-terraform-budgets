###############################################################################
###############################################################################

# 1) The budgets map variable:
#    A map keyed by budget name. Each entry contains
#    - subscription_id: The subscription where this budget applies
#    - amount: The monthly budget amount
#    - resource_groups: A list of resource groups to scope. Empty => all RGs in that subscription

variable "budgets" {
  type = map(object({
    subscription_id = string
    amount          = number
    resource_groups = list(string)
  }))
  default = {}
  description = "Map of budget definitions for the Dev environment."
}

# 2) Start and end dates for the budgets
variable "start_date" {
  type        = string
  default     = "2025-04-01"
  description = "Start date (YYYY-MM-DD) for the budgets in Dev."
}

variable "end_date" {
  type        = string
  default     = "2026-03-31"
  description = "End date (YYYY-MM-DD) for the budgets in Dev."
}

# 3) Thresholds for Actual vs. Forecast usage alerts
variable "threshold_actual" {
  type        = number
  default     = 0.75
  description = "Alert threshold for actual usage in Dev (e.g. 0.75 = 75%)."
}

variable "threshold_forecast" {
  type        = number
  default     = 0.85
  description = "Alert threshold for forecast usage in Dev (e.g. 0.85 = 85%)."
}

# 4) Contact emails to send budget alerts to
variable "contact_emails" {
  type        = list(string)
  default     = ["ALZ4LS@justice.gov.uk"]
  description = "List of email addresses that receive Dev budget alerts."
}



