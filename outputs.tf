output "media_id" {
  description = "ID of the uploaded media"
  value       = vcd_catalog_media.media.id
}

output "media_name" {
  description = "Name of the uploaded media"
  value       = vcd_catalog_media.media.name
}

output "media_size" {
  description = "Size of the uploaded media in bytes"
  value       = vcd_catalog_media.media.size
}

output "media_status" {
  description = "Status of the uploaded media"
  value       = vcd_catalog_media.media.status
}
