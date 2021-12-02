## Packer HCL Variable File

_comment          = "Build with `packer build -var-file=windows-variables-2016.pkrvars.hcl windows-2016.pkr.hcl`"
disk_size         = "64G"
iso_checksum = "18a4f00a675b0338f3c7c93c4f131beb"
iso_checksum_type = "md5"
iso_url           = "http://download.microsoft.com/download/1/6/F/16FA20E6-4662-482A-920B-1A45CF5AAE3C/14393.0.160715-1616.RS1_RELEASE_SERVER_EVAL_X64FRE_EN-US.ISO"
qemu_binary       = "/usr/libexec/qemu-kvm"
release           = "2k16"
vm_name           = "windows-2k16-uefi"
