#-> Create 2 EC2 instance in AWS using autosetup.sh as userdata which do below things.
1) Enable password authentication
2) add ansible user. (Password will be 'ansible')
3) set sshkey for ansible
4) give sudo access to ansible user

#-> Once EC2 instance up, login on server which will work as Ansible Node server and execute below command by ROOT user
amazon-linux-extras install ansible2
su - ansible
ssh-copy-id <ip-of-2nd-server>    -----> This will ask password, provide password as "ansible"

ansible-1 --> create simple playbook
ansible-2 --> use of role
ansible-3 --> use of templete
ansible-4 --> use of group vars
ansible-5 --> use of host vars