variable "policy_name" {
    type = string
}

variable "group_name" {
    type = string
}

variable "role_name" {
    type = string
}

variable "tags" {
    type = list(string)
    default = [ 
        "ucsb:dept:LIBR:roles:${var.role_name}" ,
        "ucsb:dept:LIBR:group:${var.group_name}",
        "ucsb:dept:LIBR:polices:${var.policy_name}" 
    ]
}

variable "policy_sets" {
    type = map(object({
        name = string
        action = list(string)
        effect  = string
        resource = list(string)
        principals

    }))
  
}