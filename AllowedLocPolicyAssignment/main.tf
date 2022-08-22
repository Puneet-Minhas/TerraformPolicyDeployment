provider "azurerm" {
  features {}
}

terraform { 
 required_providers { 
     azurerm = { 
         source = "hashicorp/azurerm"
         version = ">= 2.96.0" 
     } 
 } 
}


resource "azurerm_resource_group_policy_assignment" "example" {

  name                 = "Demo-allowed-locations-policy-assignment"
  resource_group_id    =  var.cust_scope 
  policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/e56962a6-4747-49cd-b67b-bf8b01975c4c"
  description          = "Demo Policy Assignment created for Allowed Locations"
  display_name         = "Demo Policy Assignment created for Allowed Locations"

parameters = jsonencode({
  "listOfAllowedLocations": {
    "value":  var.location,
  }
}
  )
}

