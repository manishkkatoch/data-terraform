
data "alicloud_oss_buckets" "oss_buckets_ds" {
  output_file = "${path.root}/output_files/oss_buckets_ds.json"
}