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

resource "azurerm_resource_group_policy_assignment" "auditvms" { 
 name = "audit-vm-manageddisks" 
 resource_group_id = var.cust_scope 
 policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/06a78e20-9358-41c9-923c-fb736d382a4d" 
 description = "Shows all virtual machines not using managed disks" 
 display_name = "Audit VMs without managed disks assignment" 
}

