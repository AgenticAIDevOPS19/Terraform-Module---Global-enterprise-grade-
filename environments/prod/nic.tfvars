network_nic = {
  prod1_win_nic = {
    env_key         = "prod1"
    subnet_key      = "prod1_sub1"
    public_key      = "prod1"
    name            = "nicprod_1_win"
    ip_name         = "internal"
    allocation_type = "Dynamic"
  }
  prod1_lin_nic = {
    env_key         = "prod1"
    subnet_key      = "prod1_sub2"
    public_key      = "prod1"
    name            = "nicprod_lin"
    ip_name         = "internal"
    allocation_type = "Dynamic"
    
  }

  prod2_win_nic = {
    env_key         = "prod2"
    subnet_key      = "prod2_sub1"
    public_key      = "prod2"
    name            = "nicprod_2_win"
    ip_name         = "internal"
    allocation_type = "dynamic"

  }

  prod2_lin_nic = {
    env_key         = "prod2"
    subnet_key      = "prod2_sub2"
    public_key      = "prod2"
    name            = "nicprod_2_lin"
    ip_name         = "internal"
    allocation_type = "dynamic"
  }
}