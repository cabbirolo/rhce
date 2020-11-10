Around 16 questions/subquestions

Tips:
•	Install vim
•	Use wget to download


1 - Install ansible
2 - Create inventory file with children
3 - Create ansible.cfg

4 - Script with ansible adhoc to configure yum repos and gpgcheck
Don’t forget to do chmod +x

- adhoc.sh

5 - Playbook on all hosts, but Install packages on some and upgrade on some. 

- yum.yml

6 - Install rhel roles and use time sync with default provider
yum install rhel-system-roles
run ansible-galaxy list to see if installed and also path to roles is listed.
If not, add to ansible.cfg, for example:
roles_path: /usr/share/ansible/rhel/roles:/home/admin/ansible/roles
Variables: /usr/share/doc/rhel-system-roles/

- rhel-role.yml

7 - Create role to install http enable it enable start firewalld and allow http port. 

8 - Role requirements file and install
mkdir /home/admin/ansible/roles
vi /home/admin/ansible/roles/requirements.yml
ansible-galaxy role install -r /home/admin/ansible/roles/requirements.yml -p /home/admin/ansible/roles/

9 - Using roles loadbalancer ????!!

10 - Create an /etc/issue with msg depending on host dev test prod. 

- issue.yml

11 - Create template with ip and host name fqdn. Not sure which file so doing this with motd

- motd

12 - Create hosts file with for loop for all. Need iOS hostnames fqdn and short

- hosts.yml

13 - Hardware report with various facts. Save txt on each host. Downloads template and fill. If device not found print not found. Probably variables

14 - Create /webdev. Symlink/ /var/www/html/webdev to /webdev. Create index.html 

- webdev.yml

15 - Create LV question 
If there’s enough storage, create with 1500m
If not create with 800
If not found print VG not found
Create filesystem
Mount filesystem

- lv.yml

16 - Create group and users dev and mgr based on their job on certain hosts. Uses vault variables and password is sha512 vault pass save on file
users.yml
echo ansible >> vaultpass
ansible-vault create secret.yml --vault-password-file=vaultpas
chmod 600 vaultpas
chown admin: vaultpass
To run:
ansible-playbook playbooks/users.yml -C --vault-password-file=vaultpass

- users.yml

17 - Rekey vault password on a file
ansible-vault rekey <vault-file> --vault-password-file=<valtpass>
