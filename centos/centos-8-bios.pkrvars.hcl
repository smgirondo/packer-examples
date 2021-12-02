# Packer HCL Variables File
##  CentOS Checksums: http://ftp.rediris.es/mirror/CentOS/8/isos/x86_64/CHECKSUM
## https://docs.centos.org/en-US/8-docs/advanced-install/assembly_kickstart-commands-and-options-reference/
## https://discuss.hashicorp.com/t/building-uefi-images-with-qemu-kvm/18061

#disk_size_boot                 = "2G"
disk_size_root                 = "24G"
dist_name                      = "centos"
install_boot_ks                = "inst.ks"
install_boot_method            = "inst.text"
iso_checksum                   = "9602c69c52d93f51295c0199af395ca0edbe35e36506e32b8e749ce6c8f5b60a"
iso_checksum_type              = "sha256"
iso_file                       = "CentOS-8.5.2111-x86_64-boot.iso"
iso_external_mirror            = "ftp.rediris.es"
iso_external_mirror_path       = "mirror/CentOS/8/isos/x86_64"
iso_external_mirror_schema     = "http"
iso_target_extension           = "iso"
preseed_file                   = "ks8-bios.cfg"
qemu_binary                    = "/usr/libexec/qemu-kvm"
package_external_mirror        = "ftp.rediris.es"
package_external_mirror_path   = "mirror/CentOS/8/BaseOS/x86_64/os/"
package_external_mirror_schema = "http"
vm_name                        = "centos8-bios"

