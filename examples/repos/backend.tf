# terraform {
#   backend "s3" {
#     acl     = "bucket-owner-full-control"
#     bucket  = "smart-sec-statefile"
#     encrypt = true
#     region  = "eu-west-2"
#     key     = "terraform-github/vox-smartrepos-engineering.tfstate"
#   }
# }