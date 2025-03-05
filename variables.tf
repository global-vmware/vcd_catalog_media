variable "vdc_org_name" {
  description = "Name of the organization"
  type        = string
}

variable "vdc_name" {
  type        = string
  description = "Cloud Director VDC Name"
  default     = ""
}

variable "catalog_name" {
  description = "Name of the catalog to upload media"
  type        = string
}

variable "media_name" {
  description = "Name of the media file"
  type        = string
}

variable "media_description" {
  description = "Description of the media file"
  type        = string
  default     = "Uploaded via Terraform"
}

variable "media_path" {
  description = "Path to the media file"
  type        = string
}

variable "upload_piece_size" {
  description = "Size in MB for splitting upload"
  type        = number
  default     = 1
}

variable "show_upload_progress" {
  description = "Show upload progress in logs"
  type        = bool
  default     = false
}

variable "upload_any_file" {
  description = "Allow uploading any file type, not just ISO"
  type        = bool
  default     = false
}

variable "metadata_entry" {
  description = "Metadata entries for the media"
  type = list(object({
    key         = string
    type        = string
    value       = string
    user_access = string
    is_system   = bool
  }))
  default = []
}
