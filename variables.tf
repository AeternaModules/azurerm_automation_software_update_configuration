variable "automation_software_update_configurations" {
  description = <<EOT
Map of automation_software_update_configurations, attributes below
Required:
    - automation_account_id
    - name
    - schedule (block):
        - advanced_month_days (optional)
        - advanced_week_days (optional)
        - description (optional)
        - expiry_time (optional)
        - expiry_time_offset_minutes (optional)
        - frequency (required)
        - interval (optional)
        - is_enabled (optional)
        - monthly_occurrence (optional, block):
            - day (required)
            - occurrence (required)
        - next_run (optional)
        - next_run_offset_minutes (optional)
        - start_time (optional)
        - start_time_offset_minutes (optional)
        - time_zone (optional)
Optional:
    - duration
    - non_azure_computer_names
    - virtual_machine_ids
    - linux (block):
        - classifications_included (required)
        - excluded_packages (optional)
        - included_packages (optional)
        - reboot (optional)
    - post_task (block):
        - parameters (optional)
        - source (optional)
    - pre_task (block):
        - parameters (optional)
        - source (optional)
    - target (block):
        - azure_query (optional, block):
            - locations (optional)
            - scope (optional)
            - tag_filter (optional)
            - tags (optional, block):
                - tag (required)
                - values (required)
        - non_azure_query (optional, block):
            - function_alias (optional)
            - workspace_id (optional)
    - windows (block):
        - classifications_included (required)
        - excluded_knowledge_base_numbers (optional)
        - included_knowledge_base_numbers (optional)
        - reboot (optional)
EOT

  type = map(object({
    automation_account_id    = string
    name                     = string
    duration                 = optional(string) # Default: "PT2H"
    non_azure_computer_names = optional(list(string))
    virtual_machine_ids      = optional(list(string))
    schedule = object({
      advanced_month_days        = optional(list(number))
      advanced_week_days         = optional(list(string))
      description                = optional(string)
      expiry_time                = optional(string)
      expiry_time_offset_minutes = optional(number)
      frequency                  = string
      interval                   = optional(number)
      is_enabled                 = optional(bool) # Default: true
      monthly_occurrence = optional(object({
        day        = string
        occurrence = number
      }))
      next_run                  = optional(string)
      next_run_offset_minutes   = optional(number)
      start_time                = optional(string)
      start_time_offset_minutes = optional(number)
      time_zone                 = optional(string) # Default: "Etc/UTC"
    })
    linux = optional(object({
      classifications_included = list(string)
      excluded_packages        = optional(list(string))
      included_packages        = optional(list(string))
      reboot                   = optional(string) # Default: "IfRequired"
    }))
    post_task = optional(object({
      parameters = optional(map(string))
      source     = optional(string)
    }))
    pre_task = optional(object({
      parameters = optional(map(string))
      source     = optional(string)
    }))
    target = optional(object({
      azure_query = optional(list(object({
        locations  = optional(list(string))
        scope      = optional(list(string))
        tag_filter = optional(string)
        tags = optional(list(object({
          tag    = string
          values = list(string)
        })))
      })))
      non_azure_query = optional(list(object({
        function_alias = optional(string)
        workspace_id   = optional(string)
      })))
    }))
    windows = optional(object({
      classifications_included        = list(string)
      excluded_knowledge_base_numbers = optional(list(string))
      included_knowledge_base_numbers = optional(list(string))
      reboot                          = optional(string) # Default: "IfRequired"
    }))
  }))
}

