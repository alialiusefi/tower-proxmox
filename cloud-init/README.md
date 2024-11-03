Useful commands:

- To attach a cloud image to a vm, it can be done only through terminal:
    - qm create <new-vm-id> --memory 2048 --name <new-vm-name> --net0 virtio,bridge=vmbr0
    - qm importdisk <newly-created-vm-id> <path-to-image> <new-disk-lvm-location>
    - qm set <newly-created-vm-id> --scsihw virtio-scsi-pci --scsi0 <new-disk-lvm-location>:vm-<newly-created-vm-id>-disk-<newly-created-disk-number>

    - set the new attached drive as cloudinit drive
        - qm set 8000 --ide2 local:cloudinit
    - boot from the new attached drive
        - qm set 8000 --boot c --bootdisk scsi0

    - set DHCP or set static IP

    - qm template 999