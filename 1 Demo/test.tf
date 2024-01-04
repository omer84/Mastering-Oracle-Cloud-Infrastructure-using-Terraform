provider "oci" {
  tenancy_ocid = "ocid1.tenancy.oc1..aaaaaaaa3qf6kevvqm2nqfqirjlxqhcs4h4oeekkvenzs3lzfxyt7674pcvq"
  user_ocid = "ocid1.user.oc1..aaaaaaaarir5lxq7hzppmrbp2yzgajm3m2hemja4cnaccbvxhwykatxcf2zq"
  fingerprint = "06:95:7e:63:36:13:e5:88:b4:b1:e0:87:d2:13:ba:29"
  private_key_path = "OCI_PRIVATE.pem"
  region = "us-ashburn-1"
}

# Get a list of Availability Domains
data "oci_identity_availability_domains" "ads_1" {
  compartment_id = "ocid1.tenancy.oc1..aaaaaaaa3qf6kevvqm2nqfqirjlxqhcs4h4oeekkvenzs3lzfxyt7674pcvq"
}

# Output the result
output "show-ads" {
  value = "${data.oci_identity_availability_domains.ads_1.compartment_id}"
}

