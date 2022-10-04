locals {
  name = var.override_name == null ? "${var.name}-${lower(var.environment)}" : "${var.override_name}-${lower(var.environment)}"
}

resource "azurerm_resource_group" "resource_group" {
  name     = local.name
  location = var.location
  tags     = var.tags
}
