variable "nsxt_manager" {
  default     = ""
  description = "The nsx-t manager host."
  type        = "string"
}

variable "nsxt_manager_user" {
  default     = "username"
  description = "The nsx-t manager username."
  type        = "string"
}

variable "nsxt_manager_password" {
  default     = "password"
  description = "The nsx-t manager password."
  type        = "string"
}

variable "allow_unverified_ssl" {
  default     = false
  type        = "string"
}
