terraform {
  required_providers {
    proxmox = {
      source  = "telmate/proxmox"
      version = "2.9.14"
    }
  }
}

provider "proxmox" {
  pm_api_url      = "https://${var.proxmox_host}:8006/api2/json"
  pm_user         = var.proxmox_terraform_user_name
  pm_password     = var.proxmox_terraform_token_secret
  pm_tls_insecure = true
}

resource "proxmox_vm_qemu" "ubuntu_server" {
  name        = "ubuntu_server"
  target_node = "myhost"

  #   disks = [
  #     ide {
  #       cdrom {
  #         iso = "isos:iso/ubuntu-24.04.1-live-server-amd64.iso"
  #       }
  #     }
  #   ]
  disks {
    ide {
      ide0 {
        cdrom {
          iso = "isos:iso/ubuntu-24.04.1-live-server-amd64.iso"
        }
      }
    }
  }

  cores  = 2
  memory = 2048
}

