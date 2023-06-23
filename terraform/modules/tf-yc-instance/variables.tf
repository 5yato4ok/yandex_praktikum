variable "instance_zone" {
  default     = "ru-central1-a"
  type        = string
  description = "Instance availability zone"
  validation {
    condition     = contains(toset(["ru-central1-a", "ru-central1-b", "ru-central1-c"]), var.instance_zone)
    error_message = "Select availability zone from the list: ru-central1-a, ru-central1-b, ru-central1-c."
  }
  sensitive = true
  nullable  = false
}

variable "platform_id" {
  default     = "standard-v1"
  type        = string
  description = "Type of the virtual machine to create."
}

variable "instance_image_id" {
  default     = "fd80qm01ah03dkqb14lc"
  type        = string
  description = "OS image id of created VM"
}

variable "instance_subnet_id" {
  default     = "e9bedb7iti13lungfmgg"
  type        = string
  description = "Network subnet id to which will be connected VM"
}