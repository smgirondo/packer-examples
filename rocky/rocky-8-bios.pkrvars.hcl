# Packer HCL Variables File
##  CentOS Checksums: http://ftp.rediris.es/mirror/CentOS/8/isos/x86_64/CHECKSUM
## https://docs.centos.org/en-US/8-docs/advanced-install/assembly_kickstart-commands-and-options-reference/

#disk_size_boot                 = "2G"
disk_size_root                 = "24G"
dist_name                      = "rocky"
install_boot_ks                = "inst.ks"
install_boot_method            = "inst.text"
iso_checksum                   = "4eb2ae6b06876205f2209e4504110fe4115b37540c21ecfbbc0ebc11084cb779"
iso_checksum_type              = "sha256"
iso_file                       = "Rocky-8.5-x86_64-minimal.iso"
iso_target_extension           = "iso"
iso_external_mirror            = "download.rockylinux.org"
iso_external_mirror_path       = "pub/rocky/8/isos/x86_64"
iso_external_mirror_schema     = "http"
preseed_file                   = "ks8-bios.cfg"
qemu_binary                    = "/usr/libexec/qemu-kvm"
package_external_mirror        = "download.rockylinux.org"
package_external_mirror_path   = "pub/rocky/8/BaseOS/x86_64"
package_external_mirror_schema = "http"
vm_name                        = "rocky8-bios"

