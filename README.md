Useful commands:

1. ansible all -m gather_facts --limit <hostname>
    - Lists all info about your host like cpu type, os and etc
    - Recommended to print it all into a text file

2. ansible all --list-hosts
    - List all hosts configured

3. ansible all -m ping
    - Pings all hosts
    - Expects ssh file and inventory config file configured in ansible.cfg

4. ansible all --key-file ./.ssh/tower_root_proxmox -i inventory.yml -m ping
    - Pings all hosts

5. ssh -i <path-to-ssh-private-key> <username>@<hostname>
    - Connect with ssh to some instance

6. lsblk
    - Print all connected disks and their partitions