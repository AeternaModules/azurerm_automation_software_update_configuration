output "automation_software_update_configurations_id" {
  description = "Map of id values across all automation_software_update_configurations, keyed the same as var.automation_software_update_configurations"
  value       = { for k, v in azurerm_automation_software_update_configuration.automation_software_update_configurations : k => v.id }
}
output "automation_software_update_configurations_automation_account_id" {
  description = "Map of automation_account_id values across all automation_software_update_configurations, keyed the same as var.automation_software_update_configurations"
  value       = { for k, v in azurerm_automation_software_update_configuration.automation_software_update_configurations : k => v.automation_account_id }
}
output "automation_software_update_configurations_duration" {
  description = "Map of duration values across all automation_software_update_configurations, keyed the same as var.automation_software_update_configurations"
  value       = { for k, v in azurerm_automation_software_update_configuration.automation_software_update_configurations : k => v.duration }
}
output "automation_software_update_configurations_error_code" {
  description = "Map of error_code values across all automation_software_update_configurations, keyed the same as var.automation_software_update_configurations"
  value       = { for k, v in azurerm_automation_software_update_configuration.automation_software_update_configurations : k => v.error_code }
}
output "automation_software_update_configurations_error_message" {
  description = "Map of error_message values across all automation_software_update_configurations, keyed the same as var.automation_software_update_configurations"
  value       = { for k, v in azurerm_automation_software_update_configuration.automation_software_update_configurations : k => v.error_message }
}
output "automation_software_update_configurations_linux" {
  description = "Map of linux values across all automation_software_update_configurations, keyed the same as var.automation_software_update_configurations"
  value       = { for k, v in azurerm_automation_software_update_configuration.automation_software_update_configurations : k => v.linux }
}
output "automation_software_update_configurations_name" {
  description = "Map of name values across all automation_software_update_configurations, keyed the same as var.automation_software_update_configurations"
  value       = { for k, v in azurerm_automation_software_update_configuration.automation_software_update_configurations : k => v.name }
}
output "automation_software_update_configurations_non_azure_computer_names" {
  description = "Map of non_azure_computer_names values across all automation_software_update_configurations, keyed the same as var.automation_software_update_configurations"
  value       = { for k, v in azurerm_automation_software_update_configuration.automation_software_update_configurations : k => v.non_azure_computer_names }
}
output "automation_software_update_configurations_post_task" {
  description = "Map of post_task values across all automation_software_update_configurations, keyed the same as var.automation_software_update_configurations"
  value       = { for k, v in azurerm_automation_software_update_configuration.automation_software_update_configurations : k => v.post_task }
}
output "automation_software_update_configurations_pre_task" {
  description = "Map of pre_task values across all automation_software_update_configurations, keyed the same as var.automation_software_update_configurations"
  value       = { for k, v in azurerm_automation_software_update_configuration.automation_software_update_configurations : k => v.pre_task }
}
output "automation_software_update_configurations_schedule" {
  description = "Map of schedule values across all automation_software_update_configurations, keyed the same as var.automation_software_update_configurations"
  value       = { for k, v in azurerm_automation_software_update_configuration.automation_software_update_configurations : k => v.schedule }
}
output "automation_software_update_configurations_target" {
  description = "Map of target values across all automation_software_update_configurations, keyed the same as var.automation_software_update_configurations"
  value       = { for k, v in azurerm_automation_software_update_configuration.automation_software_update_configurations : k => v.target }
}
output "automation_software_update_configurations_virtual_machine_ids" {
  description = "Map of virtual_machine_ids values across all automation_software_update_configurations, keyed the same as var.automation_software_update_configurations"
  value       = { for k, v in azurerm_automation_software_update_configuration.automation_software_update_configurations : k => v.virtual_machine_ids }
}
output "automation_software_update_configurations_windows" {
  description = "Map of windows values across all automation_software_update_configurations, keyed the same as var.automation_software_update_configurations"
  value       = { for k, v in azurerm_automation_software_update_configuration.automation_software_update_configurations : k => v.windows }
}

