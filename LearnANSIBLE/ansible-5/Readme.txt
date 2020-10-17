#comment DOCUMENTROOT and HTTP_PORT line in host_vars/dev01.yml and then run playbook.
ansible-playbook apache.yml -e HOSTS=dev01

#now uncomment DOCUMENTROOT and HTTP_PORT line in host_vars/dev01.yml and then run playbook.
ansible-playbook apache.yml -e HOSTS=dev01

#now run playbook with parameter
ansible-playbook apache.yml -e HOSTS=dev01 -e DOCUMENTROOT=/opt/htdocs HTTP_PORT=33000

Note - Use CentOs or RHEL or Amazon linux
Pre-requisite - require 1 Ansible Control Node and 2 Client Node (1 will treat as DEV and another as QA server/environment)

Requirement - Create a playbook which will do below things 
===========
1) We have apache server with customized static containt path (/opt/htdocs).
2) Copy index.html in proper path
3) Start Apache
4) Cron job to start Apache on Monday at 9:50 AM
5) Cron job to stop Apache on Friday at 6:00 PM
6) index.html should show which ENV it is.