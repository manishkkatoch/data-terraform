terraform {
  backend "oss" {
    bucket  = "mk-data-terraform-state-staging"
    prefix  = "MK/Staging/OSS"
    key     = "terraform.tfstate"
    region  = "cn-hongkong"
    profile = "staging"
  }
}

provider "alicloud" {
  profile = var.aliyun_profile
  region  = var.aliyun_region
  access_key = var.access_key
  secret_key = var.secret_key
  version = "~> 1.60"
}

resource "alicloud_oss_bucket" "ipp_exams" {
  bucket = "mk-ipp-exams-${var.environment}"
  acl    = "private"
}


resource "alicloud_oss_bucket" "ipp_images" {
  bucket = "mk-ipp-images-${var.environment}"
  acl    = "private"
}