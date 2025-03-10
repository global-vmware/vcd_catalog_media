terraform {
  required_version = "~> 1.2"

  required_providers {
    vcd = {
      source  = "vmware/vcd"
      version = "~> 3.8"
    }
  }
}

data "vcd_catalog" "catalog" {
  org  = var.vdc_org_name
  name = var.catalog_name
}

resource "vcd_catalog_media" "media" {
  org                   = var.vdc_org_name
  catalog_id            = data.vcd_catalog.catalog.id
  name                  = var.media_name
  description           = var.media_description
  media_path            = var.media_path
  upload_piece_size     = var.upload_piece_size
  show_upload_progress  = var.show_upload_progress
  upload_any_file       = var.upload_any_file
}