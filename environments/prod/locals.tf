locals {
  resource_name = {
    for key, value in module.resource_group_module :
    key => value.resource_group_name_output


  }

  resource_location = {
    for key, value in module.resource_group_module :
    key => value.resource_group_location_output
  }
}