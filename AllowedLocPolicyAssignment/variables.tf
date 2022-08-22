
variable "location" {
 type  = list
 description = "List of allowed Locations"
}
variable "cust_scope" {
    default = "/subscriptions/<subscription_id>/resourceGroups/rg-bicep-demos"
}
