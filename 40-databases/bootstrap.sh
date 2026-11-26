#!/bin/bash
component = $1
environment = $2
dnf install ansible -y
cd /home/ec2-user
git clone https://github.com/Andekeshava/roboshop-ansible-v3.git
cd roboshop-ansible-v3
git pull # when we are running for the second time, then if there are any changes in the repo then it pulls the changes 
ansible-playbook -e component=$component -e env=$environment main.yaml