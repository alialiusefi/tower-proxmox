Useful commands:

1. ansible all -m gather_facts --limit <hostname>
    - Lists all info about your host like cpu type, os and etc
    - Recommended to print it all into a text file

2. ansible all --list-hosts
    - List all hosts configured

3. ansible all -m ping
    - Pings all hosts
    - Expects ssh file and inventory config file configured in ansible.cfg

4. ansible all --key-file ../.ssh/tower_root_proxmox -i inventory.yml -m ping
    - Pings all hosts

5. ssh -i <path-to-ssh-private-key> <username>@<hostname>
    - Connect with ssh to some instance

6. lsblk
    - Print all connected disks and their partitions

7. ssh-keygen -t ed25519 -C <key-name>
    - Generate a ssh key pair

8. ssh-copy-id -i <path-to-public-key> <target-host>
    - Send your generated public key to the host that you want to connect to later.

9. rm -rfv <path>
    - Delete all files and folders, including the folder provided.

10. chown <new-owner>:<new-group> <file>

11. ls -l
    - is used to show files and folders with their respective owner & permissions
    - result break down
        - content permissions
        - number of links
        - owner
        - group owner
        - size in bytes
        - last modified date/time
        - file/directory name