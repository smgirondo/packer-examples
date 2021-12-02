# Packer HCL Variables File
##  CentOS Checksums: http://ftp.rediris.es/mirror/CentOS/8/isos/x86_64/CHECKSUM
## https://docs.centos.org/en-US/8-docs/advanced-install/assembly_kickstart-commands-and-options-reference/
## https://discuss.hashicorp.com/t/building-uefi-images-with-qemu-kvm/18061

#disk_size_boot                 = "2G"
disk_size_root                 = "24G"
dist_name                      = "centos"
install_boot_ks                = "ks"
install_boot_method            = "text"
iso_checksum                   = "07b94e6b1a0b0260b94c83d6bb76b26bf7a310dc78d7a9c7432809fb9bc6194a"
iso_checksum_type              = "sha256"
iso_file                       = "CentOS-7-x86_64-Minimal-2009.iso"
iso_external_mirror            = "ftp.rediris.es"
iso_external_mirror_path       = "mirror/CentOS/7.9.2009/isos/x86_64"
iso_external_mirror_schema     = "http"
iso_target_extension           = "iso"
preseed_file                   = "ks7-uefi.cfg"
qemu_binary                    = "/usr/libexec/qemu-kvm"
package_external_mirror        = "ftp.rediris.es"
package_external_mirror_path   = "mirror/CentOS/7/os/x86_64"
package_external_mirror_schema = "http"
vm_name                        = "centos7-uefi"

