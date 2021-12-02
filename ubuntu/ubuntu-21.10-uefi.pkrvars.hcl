## Packer HCL Variable File
# Ubuntu Mirrors: https://launchpad.net/ubuntu/+archivemirrors

disk_size_boot                 = "1G"
disk_size_root                 = "24G"
cinit_meta_data                = "meta-data"
cinit_user_data                = "user-data-uefi"
dist_name                      = "ubuntu"
iso_checksum                   = "e84f546dfc6743f24e8b1e15db9cc2d2c698ec57d9adfb852971772d1ce692d4"
iso_checksum_type              = "sha256"
iso_file                       = "ubuntu-21.10-live-server-amd64.iso"
iso_target_extension           = "iso"
iso_external_mirror            = "releases.ubuntu.com"
iso_external_mirror_path       = "21.10"
iso_external_mirror_schema     = "http"
qemu_binary                    = "/usr/libexec/qemu-kvm"
package_external_mirror        = "ubuntu.cica.es"
package_external_mirror_path   = "ubuntu"
package_external_mirror_schema = "http"
vm_name                        = "ubuntu-21-uefi"

