budgets = {
  "budget-alz-hub-001" = {
    subscription_id = "/subscriptions/c5551d23-f465-4e90-9f4d-ef19eecff6a0"
    amount          = 1650
    resource_groups = []
  },
  "budget-alz-sserv-001" = {
    subscription_id = "/subscriptions/0101c59d-45af-4adc-85cb-41ff25989974"
    amount          = 1500
    resource_groups = []
  },
  "budget-alz-smss-core-001" = {
    subscription_id = "/subscriptions/1694d62a-08ca-48d5-93b6-0feb07d8bce3"
    amount          = 62
    resource_groups = [
      "rg-smss-core-001",
      "rg-smss-monitoring-001",
      "azurebackuprg_uksouth_1",
      "networkwatcherrg"
    ]
  }
}

start_date         = "2025-04-01T00:00:00Z"
end_date           = "2026-03-31T00:00:00Z"
threshold_actual   = 75.0
threshold_forecast = 85.0
contact_emails     = ["ALZ4LS@justice.gov.uk"]

action_group_name = "ag-alz-4ls"
action_group_rg   = "rg-hub-core-001"

tenant_id       = "0bb413d7-160d-4839-868a-f3d46537f6af"
subscription_id = "c5551d23-f465-4e90-9f4d-ef19eecff6a0"