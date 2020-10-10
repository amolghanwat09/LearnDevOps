Note - Use CentOs or RHEL or Amazon linux
Pre-requisite - require 1 Ansible Control Node and 1 Client Node

Requirement - Create a playbook which will do below things
===========
1) We have apache server with customized static containt path (/opt/htdocs).
2) Copy static containt in proper path
3) Start Apache
4) Cron job to start Apache on Monday at 9:50 AM
5) Cron job to stop Apache on Friday at 6:00 PM 