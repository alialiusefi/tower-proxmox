Useful commands:

# https://www.youtube.com/watch?v=MeltFN-bXrQ

1. Physical Volume commands:
    - pvdisplay
2. Volume Group commands:
    - vgdisplay
3. Logical volume commands:
    - lvcreate <existing-volume-group-name> -L <size-in-gb>G -n <name>
4. Print all filesystems attached:
    - df -h
5. Format and create a filesystem:
    - mkfs.ext4 <mapper-path>
    - example: mkfs.ext4 /dev/mapper/static-vmbackups
6. Edit fstab file to auto mount filesystems
    - nano /etc/fstab
    - add a row: UUID=<blkid of your lv> <mount-path> ext4 defaults 0 2
    - example: UUID=0d06573b-89f6-41f2-bf12-7a0e00bde354 /mnt/vmbackups ext4 defaults 0 2