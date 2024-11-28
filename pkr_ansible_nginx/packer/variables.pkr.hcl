
# Common
variable profile {
  type        = string
  description = "aws profile name"
}

variable instance {
  type = string
}
variable region {
  type = string
}

# Ubuntu 

variable ami_name_ubuntu {
  type = string
}
variable ssh_username_ubuntu {
  type = string
}
variable source_ami_ubuntu {
  type = string
  validation {
    condition     = length(var.source_ami_ubuntu) > 4 && substr(var.source_ami_ubuntu, 0, 4) == "ami-"
    error_message = "The source_ami_ubuntu value must be a valid source_ami_ubuntu, starting with \"ami-\"."
  }
}

variable ami_regions {
  type = list(string)
}


# Windows

variable ami_name_win {
  type = string
}
variable winrm_username {
  type = string
}
variable winrm_password {
  type = string
}
variable source_ami_win {
  type = string
  validation {
    condition     = length(var.source_ami_win) > 4 && substr(var.source_ami_win, 0, 4) == "ami-"
    error_message = "The source_ami_win value must be a valid source_ami_win, starting with \"ami-\"."
  }
}
