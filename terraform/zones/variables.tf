variable "repo" {
  type = object({
    name                    = string
    description             = string
    tfc_organization        = string
    oauth_client_id         = string
    github_organization     = string
    tfc_working_directory   = string
  })
}

variable "zones" {
  type = map(object({
    name                    = string
  }))
}

variable "github_owner" {
  type                      = string
  default                   = "library-ucsb"  
}