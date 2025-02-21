budgets = {
  "budget-alz-hub-003" = {
    subscription_id = "d065122c-0c8c-4024-b018-8bc853119e12"
    amount          = 1650
    resource_groups = []
  },
  "budget-alz-sserv-003" = {
    subscription_id = "295f66cf-5554-4bfe-b3f7-3db13f27e4ca"
    amount          = 1500
    resource_groups = []
  },
  "budget-alz-smss-core-003" = {
    subscription_id = "becc4bf3-5028-43e4-8008-06e9362d6b86"
    amount          = 350
    resource_groups = [
      "rg-smss-core-001",
      "rg-smss-monitoring-001",
      "azurebackuprg_uksouth_1",
      "networkwatcherrg"
    ]
  },
  "budget-alz-smss-dogs-003" = {
    subscription_id = "becc4bf3-5028-43e4-8008-06e9362d6b86"
    amount          = 800
    resource_groups = [
      "rg-smss-dogs-001",
      "rg-smss-dogs-staging-001",
      "rg-smss-dogs-alerts-001",
      "rg-smss-dogs-staging-alerts-001"
    ]
  },
  "budget-alz-smss-ibase-003" = {
    subscription_id = "becc4bf3-5028-43e4-8008-06e9362d6b86"
    amount          = 350
    resource_groups = [
      "rg-smss-ibase-alerts-001",
      "rg-smss-ibase-001"
    ]
  }
}