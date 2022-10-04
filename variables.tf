# variable "environment" {
#   description = "(Required) The name of the environment."
#   default     = null
#   type        = string
#   validation {
#     condition = contains([
#       "dev",
#       "test",
#       "prod",
#     ], var.environment)
#     error_message = "Possible values are dev, test, and prod."
#   }
# }

variable "location" {
  description = "(Required) The Azure Region where the Resource Group should exist. Changing this forces a new Resource Group to be created."
  type        = string
}

variable "name" {
  description = "(Required) The Name which should be used for this Resource Group. Changing this forces a new Resource Group to be created."
  type        = string
}

variable "override_name" {
  description = "(Optional) Override the name of the resource. Under normal circumstances, it should not be used."
  default     = null
  type        = string
}

variable "tags" {
  description = "(Optional) A mapping of tags to assign to the resource."
  default     = {}
  type        = map(string)
}
