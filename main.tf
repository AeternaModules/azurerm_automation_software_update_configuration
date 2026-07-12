resource "azurerm_automation_software_update_configuration" "automation_software_update_configurations" {
  for_each = var.automation_software_update_configurations

  automation_account_id    = each.value.automation_account_id
  name                     = each.value.name
  duration                 = each.value.duration
  non_azure_computer_names = each.value.non_azure_computer_names
  virtual_machine_ids      = each.value.virtual_machine_ids

  schedule {
    advanced_month_days        = each.value.schedule.advanced_month_days
    advanced_week_days         = each.value.schedule.advanced_week_days
    description                = each.value.schedule.description
    expiry_time                = each.value.schedule.expiry_time
    expiry_time_offset_minutes = each.value.schedule.expiry_time_offset_minutes
    frequency                  = each.value.schedule.frequency
    interval                   = each.value.schedule.interval
    is_enabled                 = each.value.schedule.is_enabled
    dynamic "monthly_occurrence" {
      for_each = each.value.schedule.monthly_occurrence != null ? [each.value.schedule.monthly_occurrence] : []
      content {
        day        = monthly_occurrence.value.day
        occurrence = monthly_occurrence.value.occurrence
      }
    }
    next_run                  = each.value.schedule.next_run
    next_run_offset_minutes   = each.value.schedule.next_run_offset_minutes
    start_time                = each.value.schedule.start_time
    start_time_offset_minutes = each.value.schedule.start_time_offset_minutes
    time_zone                 = each.value.schedule.time_zone
  }

  dynamic "linux" {
    for_each = each.value.linux != null ? [each.value.linux] : []
    content {
      classifications_included = linux.value.classifications_included
      excluded_packages        = linux.value.excluded_packages
      included_packages        = linux.value.included_packages
      reboot                   = linux.value.reboot
    }
  }

  dynamic "post_task" {
    for_each = each.value.post_task != null ? [each.value.post_task] : []
    content {
      parameters = post_task.value.parameters
      source     = post_task.value.source
    }
  }

  dynamic "pre_task" {
    for_each = each.value.pre_task != null ? [each.value.pre_task] : []
    content {
      parameters = pre_task.value.parameters
      source     = pre_task.value.source
    }
  }

  dynamic "target" {
    for_each = each.value.target != null ? [each.value.target] : []
    content {
      dynamic "azure_query" {
        for_each = target.value.azure_query != null ? target.value.azure_query : []
        content {
          locations  = azure_query.value.locations
          scope      = azure_query.value.scope
          tag_filter = azure_query.value.tag_filter
          dynamic "tags" {
            for_each = azure_query.value.tags != null ? azure_query.value.tags : []
            content {
              tag    = tags.value.tag
              values = tags.value.values
            }
          }
        }
      }
      dynamic "non_azure_query" {
        for_each = target.value.non_azure_query != null ? target.value.non_azure_query : []
        content {
          function_alias = non_azure_query.value.function_alias
          workspace_id   = non_azure_query.value.workspace_id
        }
      }
    }
  }

  dynamic "windows" {
    for_each = each.value.windows != null ? [each.value.windows] : []
    content {
      classifications_included        = windows.value.classifications_included
      excluded_knowledge_base_numbers = windows.value.excluded_knowledge_base_numbers
      included_knowledge_base_numbers = windows.value.included_knowledge_base_numbers
      reboot                          = windows.value.reboot
    }
  }
}

