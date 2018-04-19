
#### Install Ansible

See http://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html#latest-releases-via-apt-ubuntu

```
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y software-properties-common
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update
sudo apt-get install -y ansible
```

#### Run the playbook locally

```
ansible-playbook -i "localhost," -c local site.yml
```
