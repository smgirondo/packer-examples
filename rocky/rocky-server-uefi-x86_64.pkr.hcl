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

variable "cpu" {
  type    = string
  default = "1"
  description = "QEMU VM vCPUs"
}

variable "communicator" {
  type    = string
  default = "ssh"
}

variable "country" {
  type    = string
  default = "US"
}

variable "description" {
  type    = string
  default = "Rocky Linux x86_64"
}

variable "disable_root" {
  type    = string
  default = "false"
  description = "Disable root account"
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

variable "disk_size_boot" {
  type    = string
  default = "1G"
  description = "Boot Disk Size"
}

variable "disk_size_root" {
  type    = string
  default = "16G"
  description = "System Disk Size"
}

variable "dist_name" {
  type    = string
  default = "rocky"
  description = "Linux Distribution Name"
}

variable "headless" {
  type    = string
  default = "false"
}

variable "host_port_max" {
  type    = string
  default = "4444"
}

variable "host_port_min" {
  type    = string
  default = "2222"
}

variable "http_directory" {
  type    = string
  default = "http"
  description = "Packer HTTP Directory"
}

variable "http_port_max" {
  type    = string
  default = "9000"
}

variable "http_port_min" {
  type    = string
  default = "8000"
}

variable "install_boot_ks" {
  type    = string
  default = "ks"
  description = "Anaconda Kickstart Boot Command"
}

variable "install_boot_method" {
  type    = string
  default = "text"
  description = "Anaconda Install Boot Method"
}

variable "install_boot_options" {
  type    = string
  default = ""
  description = "Anaconda Install Boot Options"
}

variable "install_stage2_source" {
  type    = string
  default = "hd:LABEL=Rocky-8-5-x86_64-dvd"
  description = "Anaconda Install Stage2 Source"
}

variable "iso_checksum_type" {
  type    = string
  default = "sha256"
  description = "from: http://ftp.rediris.es/mirror/CentOS/7.9.2009/isos/x86_64/sha256sum.txt"
}

variable "iso_checksum" {
  type    = string
  default = "4eb2ae6b06876205f2209e4504110fe4115b37540c21ecfbbc0ebc11084cb779"
  description = "https://download.rockylinux.org/pub/rocky/8/isos/x86_64/CHECKSUM"
}

variable "iso_file" {
  type    = string
  default = "Rocky-8.5-x86_64-minimal.iso"
}

variable "iso_external_mirror" {
  type    = string
  default = "download.rockylinux.org"
}

variable "iso_external_mirror_path" {
  type    = string
  default = "pub/rocky/8/isos/x86_64"
}

variable "iso_external_mirror_schema" {
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
  default = "rocky/8/isos/x86_64"
}

variable "iso_internal_mirror_schema" {
  type    = string
  default = "http"
  description = "Download Internal Protocol Schema"
}

variable "iso_target_extension" {
  type    = string
  default = "iso"
  description = "ISO extension"
}

variable "keyboard_layout" {
  type    = string
  default = "us"
}

variable "keyboard_variant" {
  type    = string
  default = "us"
}

variable "machine_type" {
  type    = string
  default = "q35"
}

variable "memory" {
  type    = string
  default = "1024"
  description = "QEMU VM Memory Size"
}

variable "language" {
  type    = string
  default = "en"
}

variable "locale" {
  type    = string
  default = "en_US.UTF-8"
}

variable "package_external_mirror" {
  type    = string
  default = "download.rockylinux.org"
}

variable "package_external_mirror_path" {
  type    = string
  default = "pub/rocky/8/BaseOS/x86_64"
}

variable "package_external_mirror_schema" {
  type    = string
  default = "http"
  description = "Download External Protocol Schema"
}

variable "package_internal_mirror" {
  type    = string
  default = "myserver:8080"
}

variable "package_internal_mirror_path" {
  type    = string
  default = "/rocky/8/BaseOS/x86_64"
}

variable "package_internal_mirror_schema" {
  type    = string
  default = "http"
  description = "Download Internal Protocol Schema"
}

variable "preseed_file" {
  type    = string
  default = "ks8-uefi.cfg"
  description = "Auto Install PreSeed File (Kickstart)"
}

variable "qemu_binary" {
  type    = string
  default = "/usr/libexec/qemu-system-x86_64"
}

variable "ssh_file_transfer_method" {
  type    = string
  default = "scp"
}

variable "ssh_fullname" {
  type    = string
  default = "Ubuntu Install User"
}

variable "ssh_handshake_attempts" {
  type    = string
  default = "100"
}

variable "ssh_keep_alive_interval" {
  type    = string
  default = "5s"
}

variable "ssh_password" {
  type    = string
  default = "changeme!"
}

variable "ssh_password_crypted" {
  type    = string
  default = "$6$7nRNHwsFf3xE68oA$bKU7l9ztGPHXF4cCy3Ol/MrT3jrfCozRylm/AHMP90nCHB7gOtVL3yoMpo7up6DPUTKhjIt0gtFDlh/hdlhrF0"
}

variable "ssh_port" {
  type    = string
  default = "22"
}

variable "ssh_pty" {
  type    = string
  default = "false"
}

variable "ssh_pubkeys" {
  type    = list(string)
  default = [
    "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQMIfkVOZLZ17UEZK5DWsd2LzK4lzLzQqTxx3eykangC7Yl1qtHCKPa80vE+7NkrFcyqnvU2BmeooBH8SNXPVVSCSkzp9nQFBggF7bq1/90WJgQQscPDk+wUtKIKbtuw7vvoi0TGDpCQxTDXoO7E2kIYc2Rolb8MacTOcrukR0XFhLNSxKtrUUa0t3++YLMrWcV8CnugIqKvoPASRnLcqCggsMmxl14DGYVWxWuNyApvEBfgtkDho+iNkq59KTRdR5qX6729hBBzQPQjjGYSPDzRx0XrigONlDmXBykDONHxKtzAHp/m18Wbz0oERztS0dd05OYOgamTMUMJAym0ZKe80dqGDipo3aVVFzLbzfCDkCtyt/QCYQ/3U8OPVb0gXa0HwnO72s1YveskypYup9Sm0oSFtiJzCE7aCmsFIA+EOkV0n6KQL5rQx+a8yQqbXRqSBYoAxO0D36YbISSEQ8xmDDVmkl1tpxtgJv2GsjDGvz/Svye/xVMUJ9oNMXXvunT1MH/7XX7anSfAqsjIuAQfWIr5HLolHKpRQhHgEsNpNEeHxAox47BOCMpdHaJV0R9dMS0iliyBwj7YTG1S/CUyZ665cKmsA/X3RRaYtp5191PXBb6arsvJ8jT0lbPGEWeXoU2shdDRXOnuaOT1Z3KXpNYYdjmemKz8aTlbZap94w==",
    "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDos2E89gtzosPo0I0TjSEt4GmTP1+CQe0VPrGewPlnh2UrgSKZrvbdkagkAl5ROOtUp+l/wUHQh7qjp1baa/NAeSx27ytY/GgfXpvS4htd+Pf6RvoO2IAgxmzINo8cHkfhFBxCu8OF3zk3rBRn1wVyYnQPHJF8RKPMZJOBc9NeoiHyBLcE2RHnygNzU6gS5KYD4ZAmeD+d9jeIfR9pXe8oxwCmENatC7jmC9XO00sBPfSSqjXvhHMJfYr8+BklGxK/h5SvxA5nDWn7LqYFPeGZNAMpDkQ4y1pct+o9zkepjeK0XnpFr7T7pN2MxsFzxRwDyCcbAZQPBoaNs4IrnmPR terraform@packer-node-0.example.io"
  ]
  description="SSH public keys injected for build auth"
}

variable "ssh_username" {
  type    = string
  default = "packer"
}

variable "ssh_wait_timeout" {
  type    = string
  default = "10m"
  description = "SSH wait connection timeout between install and provision"
}

variable "timezone" {
  type    = string
  default = "UTC"
}

variable "vm_name" {
  type    = string
  default = "rocky8-uefi"
  description = "VM Name"
}

locals {
  boot_command     = [
    "c<wait>",
    "linuxefi /images/pxeboot/vmlinuz inst.stage2=${var.install_stage2_source} ",
    "--- ${var.install_boot_ks}=http://{{ .HTTPIP }}:{{ .HTTPPort }}/${var.preseed_file}<wait> ",
    "${var.install_boot_options}<enter><wait>",
    "initrdefi /images/pxeboot/initrd.img<enter><wait>",
    "boot<enter><wait>"
  ]
  output_directory = "${var.build_directory}/${var.dist_name}/${formatdate("YYYYMMDDhhmm", timestamp())}"
  disk_vda         = "${local.output_directory}/${var.vm_name}"
  disk_vdb         = "${local.output_directory}/${var.vm_name}-1"
  iso_checksum     = "${var.iso_checksum_type}:${var.iso_checksum}"
  #iso_cached_path  = "${var.cache_directory}/${sha1(local.iso_checksum)}.${var.iso_target_extension}"
  iso_cached_path  = "${var.cache_directory}/${var.iso_file}"
  iso_external_url = "${var.iso_external_mirror_schema}://${var.iso_external_mirror}/${var.iso_external_mirror_path}/${var.iso_file}"
  iso_internal_url = "${var.iso_internal_mirror_schema}://${var.iso_internal_mirror}/${var.iso_internal_mirror_path}/${var.iso_file}"
  qemu_disk_vda    = "${local.disk_vda},if=${var.disk_interface},cache=${var.disk_cache},format=${var.disk_format}"
  qemu_disk_vdb    = "${local.disk_vdb},if=${var.disk_interface},cache=${var.disk_cache},format=${var.disk_format}"
  qemu_cdrom       = "${local.iso_cached_path},media=cdrom"
  preseed_vars     = {
                       country = "${var.country}"
                       #disable_root = "${var.disable_root}"
                       #disk_boot = "${var.disk_boot}"
                       #disk_root = "${var.disk_root}"
                       iso_external_mirror = var.package_internal_mirror
                       iso_external_mirror_path = var.package_internal_mirror_path
                       iso_external_mirror_schema = var.package_internal_mirror_schema
                       iso_internal_mirror = var.package_internal_mirror
                       iso_internal_mirror_path = var.package_internal_mirror_path
                       iso_internal_mirror_schema = var.package_internal_mirror_schema
                       keyboard_layout = "${var.keyboard_layout}"
                       keyboard_variant = "${var.keyboard_variant}"
                       language = "${var.language}"
                       locale = "${var.locale}"
                       #lv_home_size = "${var.lv_home_size}"
                       #lv_root_size = "${var.lv_root_size}"
                       #lv_var_size = "${var.lv_var_size}"
                       #packages = [for package in var.packages: package]
                       package_external_mirror = var.package_internal_mirror
                       package_external_mirror_path = var.package_internal_mirror_path
                       package_external_mirror_schema = var.package_internal_mirror_schema
                       package_internal_mirror = var.package_internal_mirror
                       package_internal_mirror_path = var.package_internal_mirror_path
                       package_internal_mirror_schema = var.package_internal_mirror_schema
                       ssh_fullname = "${var.ssh_fullname}"
                       ssh_username = "${var.ssh_username}"
                       ssh_password = "${var.ssh_password}"
                       ssh_password_crypted = "${var.ssh_password_crypted}"
                       ssh_pubkeys = [for pubkey in var.ssh_pubkeys: pubkey]
                       #system_clock_in_utc = "${var.system_clock_in_utc}"
                       timezone = "${var.timezone}"
                       vm_name = "${var.vm_name}"
  }
}

source "qemu" "rocky_server" {
  accelerator          = "kvm"
  cpus                 = "${var.cpu}"
  boot_command         = local.boot_command
  boot_wait            = "${var.boot_wait}"
  cdrom_interface      = var.disk_interface
  disk_size            = "${var.disk_size_boot}"
  disk_additional_size = ["${var.disk_size_root}"]
  disk_interface       = var.disk_interface
  disk_cache           = var.disk_cache
  format               = var.disk_format
  http_content         = {
    "/${var.preseed_file}" = templatefile("${path.root}/${var.http_directory}/${var.preseed_file}", local.preseed_vars)
  }
  #http_directory      = var.http_directory
  http_port_max        = var.http_port_max
  http_port_min        = var.http_port_min
  iso_checksum         = local.iso_checksum
  iso_skip_cache       = false
  iso_target_extension = var.iso_target_extension
  iso_target_path      = "${var.cache_directory}/${var.iso_file}"
  iso_urls             = ["${local.iso_internal_url}", "${local.iso_external_url}"]
  machine_type         = var.machine_type
  memory               = var.memory
  output_directory     = "${local.output_directory}"
  shutdown_command     = "echo '${var.ssh_password}'| sudo -S shutdown -P now"
  ssh_password         = "${var.ssh_password}"
  ssh_username         = "${var.ssh_username}"
  ssh_wait_timeout     = "${var.ssh_wait_timeout}"
  qemu_binary          = "${var.qemu_binary}"
  qemuargs             = [
    [ "-drive", "if=pflash,format=raw,readonly,file=/usr/share/OVMF/OVMF_CODE.secboot.fd" ],
    [ "-drive", "if=pflash,format=raw,readonly,file=/usr/share/OVMF/OVMF_VARS.fd" ],
    [ "-drive", "file=${local.qemu_disk_vda},if=none,id=boot"],
    [ "-drive", "file=${local.qemu_disk_vdb},id=root"],
    [ "-drive", "file=${local.qemu_cdrom},if=none,id=cdrom"],
    [ "-device", "virtio-blk-pci,drive=boot,bootindex=0" ],
    [ "-device", "ide-cd,drive=cdrom,bootindex=1" ]
  ]
  use_default_display  = true
  vm_name              = "${var.vm_name}"
}

build {
  sources = ["source.qemu.rocky_server"]

  provisioner "shell" {
    execute_command = "echo '${var.ssh_password}' | {{ .Vars }} sudo -E -S bash '{{ .Path }}'"
    scripts         = ["scripts/update.sh", "scripts/extra-packages.sh", "scripts/cleanup.sh"]
  }
}
