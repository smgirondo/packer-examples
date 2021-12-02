variable "_comment" {
  type    = string
  default = "Build Comments and / or Descriptions"
  description = "Build Comments"
}

variable "boot_wait" {
  type    = string
  default = "5s"
  description = "Boot Wait Time"
}

variable "build_directory" {
  type    = string
  default = "/var/cache/hashicorp/packer/images/build"
  description = "Packer HTTP Directory"
}

variable "cache_directory" {
  type    = string
  default = "${env("PACKER_CACHE_DIR")}"
  description = "Packer Cache Directory"
}

variable "cd_files_prefix" {
  type    = string
  default = "cdrom"
  description = "Local CD Contents location"
}

variable "cd_label" {
  type    = string
  default = "unattend"
  description = "Additional AutoUnattend CD Label"
}
variable "communicator" {
  type    = string
  default = "winrm"
  description = "Packer Communicator for Provisioner Run"
}

variable "cpus" {
  type    = string
  default = "2"
}

variable "disk_boot" {
  type    = string
  default = "vda"
  description = "Virtual Boot Disk Name"
}

variable "disk_cache" {
  type    = string
  default = "writeback"
  description = "Virtual Disk Interface"
}

variable "disk_format" {
  type    = string
  default = "qcow2"
  description = "QEMU disk format"
}

variable "disk_interface" {
  type    = string
  default = "virtio"
  description = "Virtual Disk Interface"
}


variable "disk_root" {
  type    = string
  default = "vdb"
  description = "Virtual Root Disk Name"
}

variable "disk_size" {
  type    = string
  default = "64G"
}

variable "disk_size_boot" {
  type    = string
  default = "1G"
  description = "Boot Disk Size"
}

variable "disk_size_root" {
  type    = string
  default = "24G"
  description = "System Disk Size"
}

variable "disk_size_unit" {
  type    = number
  default = 65536
}

variable "dist_name" {
  type    = string
  default = "windows"
  description = "Windows Release Name"
}

variable "firmware_type" {
  type    = string
  default = "uefi"
  description = "Auxiliary VM Firmware Type"
}
variable "firmware_code" {
  type    = string
  default = "/usr/share/OVMF/OVMF_CODE.secboot.fd"
  description = "Auxiliary VM Firmware Code"
}

variable "floppy_files_prefix" {
  type    = string
  default = "floppy"
  description = "Local Floppy Contents location"
}

variable "headless" {
  type    = string
  default = "true"
}

variable "iso_checksum" {
  type    = string
  default = "18a4f00a675b0338f3c7c93c4f131beb"
}

variable "iso_checksum_type" {
  type    = string
  default = "md5"
  description = "ISO File Checksum Type"
}

variable "iso_file" {
  type    = string
  default = "14393.0.160715-1616.RS1_RELEASE_SERVER_EVAL_X64FRE_EN-US.ISO"
  description = "ISO File Name"
}

variable "iso_external_mirror" {
  type    = string
  default = "download.microsoft.com"
}

variable "iso_external_mirror_path" {
  type    = string
  default = "download/1/6/F/16FA20E6-4662-482A-920B-1A45CF5AAE3C"
  description = "Mirror Context Path for ISOs (without trailing sepators)"
}

variable "iso_external_schema" {
  type    = string
  default = "http"
  description = "Download External Protocol Schema"
}

variable "iso_internal_mirror" {
  type    = string
  default = "myserver:8080"
}

variable "iso_internal_mirror_path" {
  type    = string
  default = "windows"
}

variable "iso_internal_schema" {
  type    = string
  default = "http"
  description = "Download Internal Protocol Schema"
}

variable "iso_target_extension" {
  type    = string
  default = "iso"
  description = "ISO extension"
}

variable "iso_url" {
  type    = string
  default = "http://download.microsoft.com/download/1/6/F/16FA20E6-4662-482A-920B-1A45CF5AAE3C/14393.0.160715-1616.RS1_RELEASE_SERVER_EVAL_X64FRE_EN-US.ISO"
}

variable "machine_type" {
  type    = string
  default = "pc-q35-rhel7.6.0"
}

variable "memory" {
  type    = string
  default = "2048"
}

variable "language" {
  type    = string
  default = "en-US"
  description = "System Language"
}

variable "locale" {
  type    = string
  default = "en-US"
  description = "System Locale"
}

variable "organization" {
  type    = string
  default = "Test Organization"
  description = "MS EULA Organization Name"
}

variable "organization_representative" {
  type    = string
  default = "Test Representant"
  description = "MS EULA Organization Representative Name"
}

variable "qemu_binary" {
  type    = string
  default = "qemu-system-x86_64"
}

variable "release" {
  type    = string
  default = "2K16"
  description = "OS Release Version"
}

variable "server_manager_not_open" {
  type    = string
  default = "False"
  description = "Do NOT Open Server Manager at Logon"
}

variable "timezone" {
  type    = string
  default = "Central Europe Standard Time"
  description = "Installer Time Zone (check: https://docs.microsoft.com/en-us/windows-hardware/customize/desktop/unattend/microsoft-windows-shell-setup-timezone)"
}

variable "version" {
  type    = string
  default = "1"
}

variable "vm_name" {
  type    = string
  default = "w2k16"
}

variable "winrm_fullname" {
  type    = string
  default = "Packer Install Account"
}

variable "winrm_password" {
  type    = string
  default = "Changeme!123"
}

variable "winrm_password_crypted" {
  type    = string
  default = "$6$jyUZUOb0M6zyHzOV$9NiJyXaPXiXeerpyCwk7QEb1swBUEw2b7kaZdD905vFRef2HoP2yj74tgVCFEwai4SLp4YB3YD1GJ9OVODq/x0"
}

variable "winrm_pubkeys" {
  type    = list(string)
  default = [
    "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQMIfkVOZLZ17UEZK5DWsd2LzK4lzLzQqTxx3eykangC7Yl1qtHCKPa80vE+7NkrFcyqnvU2BmeooBH8SNXPVVSCSkzp9nQFBggF7bq1/90WJgQQscPDk+wUtKIKbtuw7vvoi0TGDpCQxTDXoO7E2kIYc2Rolb8MacTOcrukR0XFhLNSxKtrUUa0t3++YLMrWcV8CnugIqKvoPASRnLcqCggsMmxl14DGYVWxWuNyApvEBfgtkDho+iNkq59KTRdR5qX6729hBBzQPQjjGYSPDzRx0XrigONlDmXBykDONHxKtzAHp/m18Wbz0oERztS0dd05OYOgamTMUMJAym0ZKe80dqGDipo3aVVFzLbzfCDkCtyt/QCYQ/3U8OPVb0gXa0HwnO72s1YveskypYup9Sm0oSFtiJzCE7aCmsFIA+EOkV0n6KQL5rQx+a8yQqbXRqSBYoAxO0D36YbISSEQ8xmDDVmkl1tpxtgJv2GsjDGvz/Svye/xVMUJ9oNMXXvunT1MH/7XX7anSfAqsjIuAQfWIr5HLolHKpRQhHgEsNpNEeHxAox47BOCMpdHaJV0R9dMS0iliyBwj7YTG1S/CUyZ665cKmsA/X3RRaYtp5191PXBb6arsvJ8jT0lbPGEWeXoU2shdDRXOnuaOT1Z3KXpNYYdjmemKz8aTlbZap94w== smgirondo@linux-mint-01",
    "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDos2E89gtzosPo0I0TjSEt4GmTP1+CQe0VPrGewPlnh2UrgSKZrvbdkagkAl5ROOtUp+l/wUHQh7qjp1baa/NAeSx27ytY/GgfXpvS4htd+Pf6RvoO2IAgxmzINo8cHkfhFBxCu8OF3zk3rBRn1wVyYnQPHJF8RKPMZJOBc9NeoiHyBLcE2RHnygNzU6gS5KYD4ZAmeD+d9jeIfR9pXe8oxwCmENatC7jmC9XO00sBPfSSqjXvhHMJfYr8+BklGxK/h5SvxA5nDWn7LqYFPeGZNAMpDkQ4y1pct+o9zkepjeK0XnpFr7T7pN2MxsFzxRwDyCcbAZQPBoaNs4IrnmPR terraform@packer-node-0.example.io"
  ]
  description="SSH public keys injected for build auth"
}

variable "winrm_timeout" {
  type    = string
  default = "20m"
}

variable "winrm_username" {
  type    = string
  default = "packer"
}

locals {
  cd_files_list = [
    "${var.cd_files_prefix}/drivers",
    "${var.cd_files_prefix}/drivers/virtio-win*/NetKVM/2k16/*/*",
    "${var.cd_files_prefix}/drivers/virtio-win*/viostor/2k16/*/*",
    "${var.cd_files_prefix}/common/*",
    "${var.cd_files_prefix}/${var.firmware_type}/${var.dist_name}/${var.release}/*"
  ]
  floppy_files_list = [
    "${var.floppy_files_prefix}/drivers/virtio-win*/NetKVM/2k16/*/*",
    "${var.floppy_files_prefix}/drivers/virtio-win*/viostor/2k16/*/*",
    "${var.floppy_files_prefix}/common/*",
    "${var.floppy_files_prefix}/${var.firmware_type}/${var.dist_name}/${var.release}/*"
  ]
  output_directory = "${var.build_directory}/${var.dist_name}/${formatdate("YYYYMMDDhhmm", timestamp())}"
  disk_vda         = "${local.output_directory}/${var.vm_name}"
  disk_vdb         = "${local.output_directory}/${var.vm_name}-1"
  iso_checksum     = "${var.iso_checksum_type}:${var.iso_checksum}"
  #iso_cached_path  = "${var.cache_directory}/${sha1(local.iso_checksum)}.${var.iso_target_extension}"
  iso_cached_path  = "${var.cache_directory}/${var.iso_file}"
  iso_external_url = "${var.iso_external_schema}://${var.iso_external_mirror}/${var.iso_external_mirror_path}/${var.iso_file}"
  iso_internal_url = "${var.iso_internal_schema}://${var.iso_internal_mirror}/${var.iso_internal_mirror_path}/${var.iso_file}"
  qemu_disk_vda    = "${local.disk_vda},if=${var.disk_interface},cache=${var.disk_cache},format=${var.disk_format}"
  qemu_disk_vdb    = "${local.disk_vdb},if=${var.disk_interface},cache=${var.disk_cache},format=${var.disk_format}"
  qemu_cdrom       = "${local.iso_cached_path},media=cdrom"
  preseed_vars     = {
                       language = "${var.language}"
                       locale = "${var.locale}"
                       organization = "${var.organization}"
                       organization_representative = "${var.organization_representative}"
                       server_manager_not_open = "${var.server_manager_not_open}"
                       timezone = "${var.timezone}"
                       vm_name = "${var.vm_name}"
                       win_admin_password = "${var.winrm_password}"
                       winrm_fullname = "${var.winrm_fullname}"
                       winrm_username = "${var.winrm_username}"
                       winrm_password = "${var.winrm_password}"
                       winrm_pubkeys  = [for pubkey in var.winrm_pubkeys: pubkey]
  }
  unattend_file_cd      = "${var.cd_files_prefix}/${var.firmware_type}/${var.dist_name}/${var.release}/autounattend.xml"
}

source "qemu" "qemu" {
  boot_command                 = [ "<tab><wait>" ]
  boot_wait                    = var.boot_wait
  communicator                 = var.communicator
  cd_content                   = {
    "autounattend.xml" = templatefile(local.unattend_file_cd, local.preseed_vars)
  }
  cd_files                     = local.cd_files_list
  cd_label                     = var.cd_label
  disk_cache                   = var.disk_cache
  disk_compression             = false
  disk_discard                 = "ignore"
  disk_image                   = false
  disk_interface               = var.disk_interface
  #disk_size                    = var.disk_size
  disk_size                    = var.disk_size_boot
  disk_additional_size         = ["${var.disk_size_root}"]
  #firmware                     = var.firmware_code
  format                       = var.disk_format
  floppy_files                 = local.floppy_files_list
  headless                     = "${var.headless}"
  http_directory               = "http"
  iso_checksum                 = local.iso_checksum
  iso_skip_cache               = false
  iso_target_extension         = var.iso_target_extension
  iso_target_path              = "${var.cache_directory}/${var.iso_file}"
  iso_urls                     = [
    "${local.iso_internal_url}",
    "${local.iso_external_url}"
  ]
  machine_type                 = var.machine_type
  memory                       = var.memory
  output_directory             = local.output_directory
  qemu_binary                  = var.qemu_binary
#  qemuargs                     = [
#    [ "-smp", "cpus=${var.cpus}" ],
#    [ "-drive", "if=pflash,format=raw,readonly,file=/usr/share/OVMF/OVMF_CODE.secboot.fd" ],
#    [ "-drive", "if=pflash,format=raw,readonly,file=/usr/share/OVMF/OVMF_VARS.fd" ],
#    [ "-drive", "file=${local.qemu_disk_vda}" ],
#    [ "-drive", "file=${local.qemu_disk_vdb}" ],
#    [ "-drive", "file=${local.qemu_cdrom}" ]
#  ]
  qemuargs             = [
    [ "-drive", "if=pflash,format=raw,readonly,file=/usr/share/OVMF/OVMF_CODE.secboot.fd" ],
    [ "-drive", "if=pflash,format=raw,readonly,file=/usr/share/OVMF/OVMF_VARS.fd" ],
    [ "-drive", "file=${local.qemu_disk_vda},if=none,id=boot"],
    [ "-drive", "file=${local.qemu_disk_vdb},id=root"],
    [ "-drive", "file=${local.qemu_cdrom},if=none,id=cdrom"],
    [ "-device", "virtio-blk-pci,drive=boot,bootindex=0" ],
    [ "-device", "ide-cd,drive=cdrom,bootindex=1" ]
  ]
  shutdown_command             = "shutdown /s /t 10 /f /d p:4:1 /c \"Packer Shutdown\""
  vm_name                      = "${var.vm_name}"
  winrm_password               = "${var.winrm_password}"
  winrm_timeout                = "${var.winrm_timeout}"
  winrm_username               = "${var.winrm_username}"
}

build {
  sources = ["source.qemu.qemu"]

  provisioner "windows-shell" {
    scripts = [
      "scripts/unlimited-password-expiration.bat",
      "scripts/enable-rdp.bat",
      "scripts/uac-disable.bat",
      "scripts/disablewinupdate.bat",
      "scripts/disable-hibernate.bat",
      "scripts/firewall-open-ping.bat",
      "scripts/firewall-open-rdp.bat"
    ]
  }

  provisioner "windows-shell" {
    inline = ["net user ${var.winrm_username} ${var.winrm_password}"]
  }

}
