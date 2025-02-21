budgets = {
  "budget-alz-hub-001" = {
    subscription_id = "c5551d23-f465-4e90-9f4d-ef19eecff6a0"
    amount          = 1650
    resource_groups = []
  },
  "budget-alz-sserv-001" = {
    subscription_id = "0101c59d-45af-4adc-85cb-41ff25989974"
    amount          = 1500
    resource_groups = []
  },
  "budget-alz-smss-core-001" = {
    subscription_id = "1694d62a-08ca-48d5-93b6-0feb07d8bce3"
    amount          = 62
    resource_groups = [
      "rg-smss-core-001",
      "rg-smss-monitoring-001",
      "azurebackuprg_uksouth_1",
      "networkwatcherrg"
    ]
  }
}
