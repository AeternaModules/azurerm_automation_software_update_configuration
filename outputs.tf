output "automation_software_update_configurations_id" {
  description = "Map of id values across all automation_software_update_configurations, keyed the same as var.automation_software_update_configurations"
  value       = { for k, v in azurerm_automation_software_update_configuration.automation_software_update_configurations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "automation_software_update_configurations_automation_account_id" {
  description = "Map of automation_account_id values across all automation_software_update_configurations, keyed the same as var.automation_software_update_configurations"
  value       = { for k, v in azurerm_automation_software_update_configuration.automation_software_update_configurations : k => v.automation_account_id if v.automation_account_id != null && length(v.automation_account_id) > 0 }
}
output "automation_software_update_configurations_duration" {
  description = "Map of duration values across all automation_software_update_configurations, keyed the same as var.automation_software_update_configurations"
  value       = { for k, v in azurerm_automation_software_update_configuration.automation_software_update_configurations : k => v.duration if v.duration != null && length(v.duration) > 0 }
}
output "automation_software_update_configurations_error_code" {
  description = "Map of error_code values across all automation_software_update_configurations, keyed the same as var.automation_software_update_configurations"
  value       = { for k, v in azurerm_automation_software_update_configuration.automation_software_update_configurations : k => v.error_code if v.error_code != null && length(v.error_code) > 0 }
}
output "automation_software_update_configurations_error_message" {
  description = "Map of error_message values across all automation_software_update_configurations, keyed the same as var.automation_software_update_configurations"
  value       = { for k, v in azurerm_automation_software_update_configuration.automation_software_update_configurations : k => v.error_message if v.error_message != null && length(v.error_message) > 0 }
}
output "automation_software_update_configurations_linux" {
  description = "Map of linux values across all automation_software_update_configurations, keyed the same as var.automation_software_update_configurations"
  value       = { for k, v in azurerm_automation_software_update_configuration.automation_software_update_configurations : k => v.linux if v.linux != null && length(v.linux) > 0 }
}
output "automation_software_update_configurations_name" {
  description = "Map of name values across all automation_software_update_configurations, keyed the same as var.automation_software_update_configurations"
  value       = { for k, v in azurerm_automation_software_update_configuration.automation_software_update_configurations : k => v.name if v.name != null && length(v.name) > 0 }
}
output "automation_software_update_configurations_non_azure_computer_names" {
  description = "Map of non_azure_computer_names values across all automation_software_update_configurations, keyed the same as var.automation_software_update_configurations"
  value       = { for k, v in azurerm_automation_software_update_configuration.automation_software_update_configurations : k => v.non_azure_computer_names if v.non_azure_computer_names != null && length(v.non_azure_computer_names) > 0 }
}
output "automation_software_update_configurations_post_task" {
  description = "Map of post_task values across all automation_software_update_configurations, keyed the same as var.automation_software_update_configurations"
  value       = { for k, v in azurerm_automation_software_update_configuration.automation_software_update_configurations : k => v.post_task if v.post_task != null && length(v.post_task) > 0 }
}
output "automation_software_update_configurations_pre_task" {
  description = "Map of pre_task values across all automation_software_update_configurations, keyed the same as var.automation_software_update_configurations"
  value       = { for k, v in azurerm_automation_software_update_configuration.automation_software_update_configurations : k => v.pre_task if v.pre_task != null && length(v.pre_task) > 0 }
}
output "automation_software_update_configurations_schedule" {
  description = "Map of schedule values across all automation_software_update_configurations, keyed the same as var.automation_software_update_configurations"
  value       = { for k, v in azurerm_automation_software_update_configuration.automation_software_update_configurations : k => v.schedule if v.schedule != null && length(v.schedule) > 0 }
}
output "automation_software_update_configurations_target" {
  description = "Map of target values across all automation_software_update_configurations, keyed the same as var.automation_software_update_configurations"
  value       = { for k, v in azurerm_automation_software_update_configuration.automation_software_update_configurations : k => v.target if v.target != null && length(v.target) > 0 }
}
output "automation_software_update_configurations_virtual_machine_ids" {
  description = "Map of virtual_machine_ids values across all automation_software_update_configurations, keyed the same as var.automation_software_update_configurations"
  value       = { for k, v in azurerm_automation_software_update_configuration.automation_software_update_configurations : k => v.virtual_machine_ids if v.virtual_machine_ids != null && length(v.virtual_machine_ids) > 0 }
}
output "automation_software_update_configurations_windows" {
  description = "Map of windows values across all automation_software_update_configurations, keyed the same as var.automation_software_update_configurations"
  value       = { for k, v in azurerm_automation_software_update_configuration.automation_software_update_configurations : k => v.windows if v.windows != null && length(v.windows) > 0 }
}

