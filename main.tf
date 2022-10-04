locals {
  # name = "${upper(var.name)}-${lower(var.environment)}-resourcegroup"
  name = var.override_name == null ? "${var.name}-${var.environment}" : "${var.override_name}-${var.environment}"
}

resource "azurerm_resource_group" "resource_group" {
  name     = local.name
  location = var.location
  tags     = var.tags
}
