packer {
  required_version = "~> 1.7.8"

  # required_providers {
  #   qemu = {
  #     source  = "github.com/hashicorp/packer-plugin-qemu"
  #     version = "~> 1.0.1"
  #   }
  #   virtualbox = {
  #     source  = "github.com/hashicorp/packer-plugin-virtualbox"
  #     version = "~> 1.0.0"
  #   }
  # }
}



variable "apt_cache_url" {
  type    = string
  default = "http://myserver:3142"
}

variable "boot_cmd_prefix" {
  type    = string
  default = "<esc><wait><esc><wait>c<wait>"
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

variable "bundle_iso" {
  type    = string
  default = "false"
}

variable "cache_directory" {
  type    = string
  default = "${env("PACKER_CACHE_DIR")}"
  description = "Packer Cache Directory"
}

variable "cinit_meta_data" {
  type    = string
  default = "meta-data"
  description="Ubuntu AutoInstall Cloud Init Meta Data"
}

variable "cinit_user_data" {
  type    = string
  default = "user-data"
  description="Ubuntu AutoInstall Cloud Init User Data"
}

variable "communicator" {
  type    = string
  default = "ssh"
}

variable "country" {
  type    = string
  default = "CA"
}

variable "cpus" {
  type    = string
  default = "1"
}

variable "description" {
  type    = string
  default = "Base box for x86_64 Ubuntu Impish Indri 21.10.x"
}

variable "disable_root" {
  type    = string
  default = "false"
  description = "Disable root account"
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
  default = "8G"
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

variable "disk_size_unit" {
  type    = number
  default = 8192
}

variable "dist_name" {
  type    = string
  default = "ubuntu"
  description = "Linux Distribution Name"
}

variable "domain" {
  type    = string
  default = "example.io"
}

variable "firmware_type" {
  type    = string
  default = "uefi"
}

variable "guest_os_type" {
  type    = string
  default = "Ubuntu_64"
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

variable "iso_checksum" {
  type    = string
  default = "e84f546dfc6743f24e8b1e15db9cc2d2c698ec57d9adfb852971772d1ce692d4"
  description = "ISO File Checksum"
}

variable "iso_checksum_type" {
  type    = string
  default = "sha256"
  description = "ISO File Checksum Type"
}

variable "iso_file" {
  type    = string
  default = "ubuntu-21.10-live-server-amd64.iso"
  description = "ISO File Name"
}

variable "iso_external_mirror" {
  type    = string
  default = "releases.ubuntu.com"
}

variable "iso_external_mirror_path" {
  type    = string
  default = "21.10"
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
  default = "ubuntu"
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

variable "keep_registered" {
  type    = string
  default = "false"
}

variable "keyboard_layout" {
  type    = string
  default = "us"
}

variable "keyboard_variant" {
  type    = string
  default = "us"
}

variable "language" {
  type    = string
  default = "en"
}

variable "locale" {
  type    = string
  default = "en_US.UTF-8"
}

variable "lv_boot_size" {
  type    = string
  default = "1G"
  description = "Ubuntu Curtin Boot LV Size"
}

variable "lv_home_size" {
  type    = string
  default = "2G"
  description = "Ubuntu Curtin Home LV Size"
}

variable "lv_root_size" {
  type    = string
  default = "4G"
  description = "Ubuntu Curtin Root LV Size"
}

variable "lv_tmp_size" {
  type    = string
  default = "2G"
  description = "Ubuntu Curtin Temp LV Size"
}

variable "lv_var_size" {
  type    = string
  default = "4G"
  description = "Ubuntu Curtin Variable LV Size"
}

variable "machine_type" {
  type    = string
  default = "q35"
}

variable "memory" {
  type    = string
  default = "2048"
}

variable "packages" {
  type    = list(string)
  default = [
    "tmux",
    "cloud-init"
  ]
  description="Additional packages to install during build"
}

variable "packer_cache_dir" {
  type    = string
  default = "${env("PACKER_CACHE_DIR")}"
}

variable "package_external_mirror" {
  type    = string
  default = "ubuntu.cica.es"
}

variable "package_external_mirror_path" {
  type    = string
  default = "ubuntu"
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
  default = "ubuntu"
}

variable "package_internal_mirror_schema" {
  type    = string
  default = "http"
  description = "Download Internal Protocol Schema"
}

variable "qemu_accelerator" {
  type    = string
  default = "kvm"
  description = "QEmu Hypervisor Implementation"
}

variable "qemu_binary" {
  type    = string
  default = "qemu-system-x86_64"
  description = "QEmu Binary File (lookup: $PATH)"
}

variable "shutdown_timeout" {
  type    = string
  default = "5m"
}

variable "skip_export" {
  type    = string
  default = "false"
}

variable "ssh_agent_auth" {
  type    = string
  default = "false"
}

variable "ssh_clear_authorized_keys" {
  type    = string
  default = "false"
}

variable "ssh_disable_agent_forwarding" {
  type    = string
  default = "false"
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

variable "ssh_pubkeys" {
  type    = list(string)
  default = [
    "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQMIfkVOZLZ17UEZK5DWsd2LzK4lzLzQqTxx3eykangC7Yl1qtHCKPa80vE+7NkrFcyqnvU2BmeooBH8SNXPVVSCSkzp9nQFBggF7bq1/90WJgQQscPDk+wUtKIKbtuw7vvoi0TGDpCQxTDXoO7E2kIYc2Rolb8MacTOcrukR0XFhLNSxKtrUUa0t3++YLMrWcV8CnugIqKvoPASRnLcqCggsMmxl14DGYVWxWuNyApvEBfgtkDho+iNkq59KTRdR5qX6729hBBzQPQjjGYSPDzRx0XrigONlDmXBykDONHxKtzAHp/m18Wbz0oERztS0dd05OYOgamTMUMJAym0ZKe80dqGDipo3aVVFzLbzfCDkCtyt/QCYQ/3U8OPVb0gXa0HwnO72s1YveskypYup9Sm0oSFtiJzCE7aCmsFIA+EOkV0n6KQL5rQx+a8yQqbXRqSBYoAxO0D36YbISSEQ8xmDDVmkl1tpxtgJv2GsjDGvz/Svye/xVMUJ9oNMXXvunT1MH/7XX7anSfAqsjIuAQfWIr5HLolHKpRQhHgEsNpNEeHxAox47BOCMpdHaJV0R9dMS0iliyBwj7YTG1S/CUyZ665cKmsA/X3RRaYtp5191PXBb6arsvJ8jT0lbPGEWeXoU2shdDRXOnuaOT1Z3KXpNYYdjmemKz8aTlbZap94w== smgirondo@linux-mint-01",
    "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDos2E89gtzosPo0I0TjSEt4GmTP1+CQe0VPrGewPlnh2UrgSKZrvbdkagkAl5ROOtUp+l/wUHQh7qjp1baa/NAeSx27ytY/GgfXpvS4htd+Pf6RvoO2IAgxmzINo8cHkfhFBxCu8OF3zk3rBRn1wVyYnQPHJF8RKPMZJOBc9NeoiHyBLcE2RHnygNzU6gS5KYD4ZAmeD+d9jeIfR9pXe8oxwCmENatC7jmC9XO00sBPfSSqjXvhHMJfYr8+BklGxK/h5SvxA5nDWn7LqYFPeGZNAMpDkQ4y1pct+o9zkepjeK0XnpFr7T7pN2MxsFzxRwDyCcbAZQPBoaNs4IrnmPR terraform@packer-node-0.example.io"
  ]
  description="SSH public keys injected for build auth"
}

variable "ssh_pty" {
  type    = string
  default = "false"
}

variable "ssh_timeout" {
  type    = string
  default = "60m"
}

variable "ssh_username" {
  type    = string
  default = "packer"
}

variable "start_retry_timeout" {
  type    = string
  default = "5m"
}

variable "ssh_wait_timeout" {
  type    = string
  default = "10m"
  description = "SSH wait connection timeout between install and provision"
}

variable "system_clock_in_utc" {
  type    = string
  default = "true"
}

variable "timezone" {
  type    = string
  default = "UTC"
}

variable "userdata_location" {
  type    = string
  default = "template"
}

variable "use_default_display" {
  type    = bool
  default = true
  description = "QEMU use default display"
}

variable "version" {
  type    = string
  default = "0.0.0"
}

variable "vm_name" {
  type    = string
  default = "base-impish"
}

variable "vnc_vrdp_bind_address" {
  type    = string
  default = "127.0.0.1"
}

variable "vnc_vrdp_port_max" {
  type    = string
  default = "6000"
}

variable "vnc_vrdp_port_min" {
  type    = string
  default = "5900"
}

# The "legacy_isotime" function has been provided for backwards compatability,
# but we recommend switching to the timestamp and formatdate functions.

locals {
  boot_command      = [
    "c",
    "linux /casper/vmlinuz --- autoinstall ds='nocloud-net;seedfrom=http://{{.HTTPIP}}:{{.HTTPPort}}/' ",
    "<enter><wait>",
    "initrd /casper/initrd<enter><wait>",
    "boot<enter>"
  ]
  cinit_meta_data  = "${replace(var.cinit_meta_data,"-${var.firmware_type}", "")}-${var.firmware_type}"
  cinit_user_data  = "${replace(var.cinit_user_data,"-${var.firmware_type}", "")}-${var.firmware_type}"
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
                       disable_root = "${var.disable_root}"
                       disk_boot = "${var.disk_boot}"
                       disk_root = "${var.disk_root}"
                       keyboard_layout = "${var.keyboard_layout}"
                       keyboard_variant = "${var.keyboard_variant}"
                       language = "${var.language}"
                       locale = "${var.locale}"
                       lv_boot_size = "${var.lv_boot_size}"
                       lv_home_size = "${var.lv_home_size}"
                       lv_root_size = "${var.lv_root_size}"
                       lv_tmp_size = "${var.lv_tmp_size}"
                       lv_var_size = "${var.lv_var_size}"
                       packages = [for package in var.packages: package]
                       ssh_fullname = "${var.ssh_fullname}"
                       ssh_username = "${var.ssh_username}"
                       ssh_password_crypted = "${var.ssh_password_crypted}"
                       ssh_pubkeys = [for pubkey in var.ssh_pubkeys: pubkey]
                       system_clock_in_utc = "${var.system_clock_in_utc}"
                       timezone = "${var.timezone}"
                       vm_name = "${var.vm_name}"
  }
}

source "qemu" "qemu" {
  accelerator                  = var.qemu_accelerator
  boot_command                 = local.boot_command
  boot_wait                    = var.boot_wait
  communicator                 = var.communicator
  cpus                         = var.cpus
  disk_cache                   = var.disk_cache
  disk_compression             = false
  disk_discard                 = "ignore"
  disk_image                   = false
  disk_interface               = var.disk_interface
  #disk_size                    = var.disk_size
  disk_size                    = var.disk_size_boot
  disk_additional_size         = ["${var.disk_size_root}"]
  format                       = var.disk_format
  headless                     = var.headless
  host_port_max                = var.host_port_max
  host_port_min                = var.host_port_min
  http_content                 = {
    "/meta-data"     = templatefile("${path.root}/${var.http_directory}/${local.cinit_meta_data}", local.preseed_vars)
    "/user-data"     = templatefile("${path.root}/${var.http_directory}/${local.cinit_user_data}", local.preseed_vars)
  }
  #http_directory               = var.http_directory
  http_port_max                = var.http_port_max
  http_port_min                = var.http_port_min
  iso_checksum                 = var.iso_checksum
  iso_skip_cache               = false
  iso_target_extension         = var.iso_target_extension
  iso_target_path              = "${var.cache_directory}/${var.iso_file}"
  iso_urls                     = ["${local.iso_internal_url}", "${local.iso_external_url}"]
  machine_type                 = var.machine_type
  memory                       = var.memory
  net_device                   = "virtio-net"
  output_directory             = local.output_directory
  qemu_binary                  = var.qemu_binary
  qemuargs                     = [
    [ "-drive", "if=pflash,format=raw,readonly,file=/usr/share/OVMF/OVMF_CODE.secboot.fd" ],
    [ "-drive", "if=pflash,format=raw,readonly,file=/usr/share/OVMF/OVMF_VARS.fd" ],
    [ "-drive", "file=${local.qemu_disk_vda},if=none,id=boot"],
    [ "-drive", "file=${local.qemu_disk_vdb},id=root"],
    [ "-drive", "file=${local.qemu_cdrom},if=none,id=cdrom"],
    [ "-device", "virtio-blk-pci,drive=boot,bootindex=0" ],
    [ "-device", "ide-cd,drive=cdrom,bootindex=1" ]
  ]
  shutdown_command             = "echo '${var.ssh_password}' | sudo -E -S poweroff"
  shutdown_timeout             = var.shutdown_timeout
  skip_compaction              = true
  skip_nat_mapping             = false
  ssh_agent_auth               = var.ssh_agent_auth
  ssh_clear_authorized_keys    = var.ssh_clear_authorized_keys
  ssh_disable_agent_forwarding = var.ssh_disable_agent_forwarding
  ssh_file_transfer_method     = var.ssh_file_transfer_method
  ssh_handshake_attempts       = var.ssh_handshake_attempts
  ssh_keep_alive_interval      = var.ssh_keep_alive_interval
  ssh_password                 = var.ssh_password
  ssh_port                     = var.ssh_port
  ssh_pty                      = var.ssh_pty
  ssh_timeout                  = var.ssh_timeout
  ssh_username                 = var.ssh_username
  use_default_display          = var.use_default_display
  vm_name                      = var.vm_name
  vnc_bind_address             = var.vnc_vrdp_bind_address
  vnc_port_max                 = var.vnc_vrdp_port_max
  vnc_port_min                 = var.vnc_vrdp_port_min
}

source "virtualbox-iso" "vbox" {
  boot_command                 = local.boot_command
  boot_wait                    = var.boot_wait
  bundle_iso                   = var.bundle_iso
  communicator                 = var.communicator
  cpus                         = var.cpus
  disk_size                    = var.disk_size_unit
  format                       = "ova"
  guest_additions_mode         = "disable"
  guest_os_type                = var.guest_os_type
  hard_drive_discard           = false
  hard_drive_interface         = "sata"
  hard_drive_nonrotational     = false
  headless                     = var.headless
  host_port_max                = var.host_port_max
  host_port_min                = var.host_port_min
  http_content                 = {
    "/meta-data"     = templatefile("${path.root}/${var.http_directory}/${local.cinit_meta_data}", local.preseed_vars)
    "/user-data"     = templatefile("${path.root}/${var.http_directory}/${local.cinit_user_data}", local.preseed_vars)
  }
  #http_directory               = var.http_directory
  http_port_max                = var.http_port_max
  http_port_min                = var.http_port_min
  iso_checksum                 = var.iso_checksum
  iso_interface                = "sata"
  iso_target_extension         = "iso"
  iso_target_path              = "${var.packer_cache_dir}/${var.iso_file}"
  iso_urls                     = ["${local.iso_internal_url}", "${local.iso_external_url}"]
  keep_registered              = var.keep_registered
  memory                       = var.memory
  output_directory             = local.output_directory
  post_shutdown_delay          = "0s"
  sata_port_count              = "1"
  shutdown_command             = "echo '${var.ssh_password}' | sudo -E -S poweroff"
  shutdown_timeout             = var.shutdown_timeout
  skip_export                  = var.skip_export
  skip_nat_mapping             = false
  ssh_agent_auth               = var.ssh_agent_auth
  ssh_clear_authorized_keys    = var.ssh_clear_authorized_keys
  ssh_disable_agent_forwarding = var.ssh_disable_agent_forwarding
  ssh_file_transfer_method     = var.ssh_file_transfer_method
  ssh_handshake_attempts       = var.ssh_handshake_attempts
  ssh_keep_alive_interval      = var.ssh_keep_alive_interval
  ssh_password                 = var.ssh_password
  ssh_port                     = var.ssh_port
  ssh_pty                      = var.ssh_pty
  ssh_timeout                  = var.ssh_timeout
  ssh_username                 = var.ssh_username
  vboxmanage                   = [["modifyvm", "{{ .Name }}", "--firmware", "efi"], ["modifyvm", "{{ .Name }}", "--rtcuseutc", "off"]]
  virtualbox_version_file      = "/tmp/.vbox_version"
  vm_name                      = var.vm_name
  vrdp_bind_address            = var.vnc_vrdp_bind_address
  vrdp_port_max                = var.vnc_vrdp_port_max
  vrdp_port_min                = var.vnc_vrdp_port_min
}

build {
  description = "Can't use variables here yet!"

  sources = ["source.qemu.qemu", "source.virtualbox-iso.vbox"]

  provisioner "shell" {
    binary              = false
    execute_command     = "echo '${var.ssh_password}' | {{ .Vars }} sudo -E -S '{{ .Path }}'"
    expect_disconnect   = true
    inline              = ["apt-get update", "apt-get --yes dist-upgrade", "apt-get clean"]
    inline_shebang      = "/bin/sh -e"
    only                = ["qemu.qemu", "vbox"]
    skip_clean          = false
    start_retry_timeout = var.start_retry_timeout
  }

  provisioner "shell" {
    binary              = false
    execute_command     = "echo '${var.ssh_password}' | {{ .Vars }} sudo -E -S '{{ .Path }}'"
    expect_disconnect   = true
    inline              = [
      "rm -f /etc/cloud/cloud.cfg.d/99-installer.cfg",
      "rm -f /etc/cloud/cloud.cfg.d/subiquity-disable-cloudinit-networking.cfg"
    ]
    inline_shebang      = "/bin/sh -e"
    only                = ["qemu.qemu", "vbox"]
    skip_clean          = false
    start_retry_timeout = var.start_retry_timeout
  }

  provisioner "shell" {
    binary              = false
    execute_command     = "echo '${var.ssh_password}' | {{ .Vars }} sudo -E -S '{{ .Path }}'"
    expect_disconnect   = true
    inline              = ["dd if=/dev/zero of=/ZEROFILL bs=16M || true", "rm /ZEROFILL", "sync"]
    inline_shebang      = "/bin/sh -e"
    only                = ["qemu.qemu", "vbox"]
    skip_clean          = false
    start_retry_timeout = var.start_retry_timeout
  }

  post-processor "compress" {
    compression_level   = 6
    format              = ".tar.gz"
    keep_input_artifact = true
    only                = ["qemu.qemu"]
    output              = "${local.output_directory}/${var.vm_name}.raw.gz"
  }
}
