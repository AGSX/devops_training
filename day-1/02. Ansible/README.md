## 02. Ansible

Make sure Ansible is installed

```
ansible --version
```

We need an inventory file.

Create a file named `hosts`:

```
192.168.33.10 ansible_user=vagrant ansible_ssh_private_key_file="~/.vagrant.d/insecure_private_key"
```

```
ansible -i ~/ansible_hosts -m ping all
```

Will error on `192.168.33.10`

```
ansible -i hosts -m raw - "apt-get install python-minimal aptitude -y" -b 192.168.33.10
```
