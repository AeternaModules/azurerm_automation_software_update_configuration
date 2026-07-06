output "automation_software_update_configurations" {
  description = "All automation_software_update_configuration resources"
  value       = azurerm_automation_software_update_configuration.automation_software_update_configurations
}
output "automation_software_update_configurations_automation_account_id" {
  description = "List of automation_account_id values across all automation_software_update_configurations"
  value       = [for k, v in azurerm_automation_software_update_configuration.automation_software_update_configurations : v.automation_account_id]
}
output "automation_software_update_configurations_duration" {
  description = "List of duration values across all automation_software_update_configurations"
  value       = [for k, v in azurerm_automation_software_update_configuration.automation_software_update_configurations : v.duration]
}
output "automation_software_update_configurations_error_code" {
  description = "List of error_code values across all automation_software_update_configurations"
  value       = [for k, v in azurerm_automation_software_update_configuration.automation_software_update_configurations : v.error_code]
}
output "automation_software_update_configurations_error_message" {
  description = "List of error_message values across all automation_software_update_configurations"
  value       = [for k, v in azurerm_automation_software_update_configuration.automation_software_update_configurations : v.error_message]
}
output "automation_software_update_configurations_linux" {
  description = "List of linux values across all automation_software_update_configurations"
  value       = [for k, v in azurerm_automation_software_update_configuration.automation_software_update_configurations : v.linux]
}
output "automation_software_update_configurations_name" {
  description = "List of name values across all automation_software_update_configurations"
  value       = [for k, v in azurerm_automation_software_update_configuration.automation_software_update_configurations : v.name]
}
output "automation_software_update_configurations_non_azure_computer_names" {
  description = "List of non_azure_computer_names values across all automation_software_update_configurations"
  value       = [for k, v in azurerm_automation_software_update_configuration.automation_software_update_configurations : v.non_azure_computer_names]
}
output "automation_software_update_configurations_post_task" {
  description = "List of post_task values across all automation_software_update_configurations"
  value       = [for k, v in azurerm_automation_software_update_configuration.automation_software_update_configurations : v.post_task]
}
output "automation_software_update_configurations_pre_task" {
  description = "List of pre_task values across all automation_software_update_configurations"
  value       = [for k, v in azurerm_automation_software_update_configuration.automation_software_update_configurations : v.pre_task]
}
output "automation_software_update_configurations_schedule" {
  description = "List of schedule values across all automation_software_update_configurations"
  value       = [for k, v in azurerm_automation_software_update_configuration.automation_software_update_configurations : v.schedule]
}
output "automation_software_update_configurations_target" {
  description = "List of target values across all automation_software_update_configurations"
  value       = [for k, v in azurerm_automation_software_update_configuration.automation_software_update_configurations : v.target]
}
output "automation_software_update_configurations_virtual_machine_ids" {
  description = "List of virtual_machine_ids values across all automation_software_update_configurations"
  value       = [for k, v in azurerm_automation_software_update_configuration.automation_software_update_configurations : v.virtual_machine_ids]
}
output "automation_software_update_configurations_windows" {
  description = "List of windows values across all automation_software_update_configurations"
  value       = [for k, v in azurerm_automation_software_update_configuration.automation_software_update_configurations : v.windows]
}

