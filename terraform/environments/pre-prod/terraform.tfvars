budgets = {
  "budget-alz-hub-002" = {
    subscription_id = "/subscriptions/d754a93f-81db-4cd3-92eb-a9fa44108063"
    amount          = 1650
    resource_groups = []
  },
  "budget-alz-sserv-002" = {
    subscription_id = "/subscriptions/eec92386-9ef2-48e3-987d-bdc6fb1e1e1e"
    amount          = 1500
    resource_groups = []
  },
}

start_date         = "2025-04-01T00:00:00Z"
end_date           = "2026-03-31T00:00:00Z"
threshold_actual   = 75.0
threshold_forecast = 85.0
contact_emails     = ["ALZ4LS@justice.gov.uk"]

action_group_name = "ag-advisor-digest-hub"
action_group_rg   = "rg-hub-core-001"

tenant_id       = "34c125c9-c7f3-486f-a78c-cf762c718831"
subscription_id = "d754a93f-81db-4cd3-92eb-a9fa44108063"