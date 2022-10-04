locals {
  # name = "${upper(var.system_name)}-${lower(var.environment)}-resourcegroup"
  name = var.override_name == null ? var.name : var.override_name
}

resource "azurerm_resource_group" "resource_group" {
  name     = local.name
  location = var.location
  tags     = var.tags
}
