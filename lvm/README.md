Useful commands:

# https://www.youtube.com/watch?v=MeltFN-bXrQ

0. Creating a partition:
    - fdisk
1. Physical Volume commands:
    - pvdisplay
    - pvresize --setphysicalvolumesize 50G /dev/sda3
    - pvresize /dev/sdb1
2. Volume Group commands:
    - vgdisplay
    - vgcreate <name> <physical-volume-name> # there can be only one volume group per partition
    - vgextend <name> /dev/<physical-volume-name> # to add a physical volume to the volume group
3. Logical volume commands:
    - lvcreate <existing-volume-group-name> -L <size-in-gb>G -n <name>
    - lvchange -a y <existing-lv-name>
    - Create a pool:
        - lvcreate -L 100M -T vg001/mythinpool
    - Create a volume from a thin pool:
        - lvcreate -V1G -T vg001/mythinpool -n thinvolume
4. Print all filesystems attached:
    - df -h
5. Format and create a filesystem:
    - mkfs.ext4 <mapper-path>
    - example: mkfs.ext4 /dev/mapper/static-vmbackups
6. Edit fstab file to auto mount filesystems
    - nano /etc/fstab
    - add a row: UUID=<blkid of your lv> <mount-path> ext4 defaults 0 2
    - example: UUID=0d06573b-89f6-41f2-bf12-7a0e00bde354 /mnt/vmbackups ext4 defaults 0 2
7. lsblk
    - Print all connected disks and their partitions 
