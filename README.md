# VMware Cloud Director Catalog Media Terraform Module

This Terraform module allows you to upload media ISO files into a VMware Cloud Director (VCD) catalog.  This module can be used to upload new media files into [Rackspace Technology SDDC Flex](https://www.rackspace.com/cloud/private/software-defined-data-center-flex) VCD Catalogs.

## Requirements

| Name      | Version |
|-----------|---------|
| terraform | ~> 1.2  |
| vcd       | ~> 3.8  |

## Resources

| Name | Type |
|------|------|
| [vcd_catalog](https://registry.terraform.io/providers/vmware/vcd/latest/docs/data-sources/catalog) | data source |
| [vcd_catalog_media](https://registry.terraform.io/providers/vmware/vcd/latest/docs/resources/catalog_media) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|----------|
| vdc_org_name | The name of the Data Center Group Organization in VCD | string | `"Organization Name Format: <Account_Number>-<Region>-<Account_Name>"` | yes |
| catalog_name | Name of the catalog to upload media | string | n/a | yes |
| media_name | Name of the media file | string | n/a | yes |
| media_description | Description of the media file | string | "Uploaded via Terraform" | no |

## Outputs

| Name | Description |
|------|-------------|
| media_id | ID of the uploaded media |
| media_name | Name of the uploaded media |
| media_size | Size of the uploaded media in bytes |
| media_status | Status of the uploaded media |

## Example Usage

Below is an example Terraform configuration using this module:

```terraform
module "vcd_catalog_media" {
  source            = "github.com/global-vmware/vcd_catalog_media.git?ref=v1.0.1"
  vdc_org_name      = "<US1-VDC-ORG-NAME>"
  catalog_name      = "<US1-CATALOG-NAME>"
  media_name        = "example.iso"
  media_description = "Example ISO uploaded via Terraform"
  media_path        = "media-files/example.iso"
}
```

## Authors

This module is maintained by the [Global VMware Cloud Automation Services Team](https://github.com/global-vmware).
