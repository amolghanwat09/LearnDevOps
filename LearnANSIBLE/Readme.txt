#create 3 vms. 1 - Control node and 2 Manage node.
#create ansible user in all 3 vms.
#give sudo access with nopassword in all 3 vms.
#generate ssh key in all 3 vms.
#copy ssh pub key from node vm to manage vms.

#-> Create 3 EC2 instance in AWS and while creating use autosetup.sh as userdata which do below things.
1) Enable password authentication
2) add ansible user. (Password will be 'ansible')
3) set sshkey for ansible

#-> Once EC2 instance up, login on server which will work as Ansible Node server and execute below command by ROOT user
amazon-linux-extras install ansible2
su - ansible
ssh-copy-id <ip-of-client-server>

ansible-1 --> create simple playbook
ansible-2 --> use of role
ansible-3 --> use of templete
ansible-4 --> use of group vars
ansible-5 --> use of host vars