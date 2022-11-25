locals {
  name = var.override_name == null ? "${var.system_short_name}-${var.app_name}-${lower(var.environment)}-rg" : var.override_name
}

resource "azurerm_resource_group" "resource_group" {
  name     = local.name
  location = var.location
  tags     = var.tags
}
