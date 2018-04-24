## 02. Ansible

Make sure Ansible is installed

```
ansible --version
```

#### Install Ansible

If Ansible is unavailable, follow instructions at http://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html#latest-releases-via-apt-ubuntu

```
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y software-properties-common
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update
sudo apt-get install -y ansible
```

### Ansible usage

First, we need an inventory file.

Create a file named `hosts`:

```
192.168.33.10 ansible_user=vagrant ansible_ssh_private_key_file="~/.vagrant.d/insecure_private_key"
```

```
ansible -i ~/ansible_hosts -m ping all
```

Since we're on Ubuntu 16.04, this may result in an error on `192.168.33.10` if we didn't install `python-minimal` beforehand

(See https://github.com/ansible/ansible/issues/17081)

Fortunately, we can also use Ansible to install that for us

```
ansible -i hosts -m raw - "apt-get install python-minimal -y" -b 192.168.33.10
```
