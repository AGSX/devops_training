## 01. Vagrant

Make sure Vagrant is installed

```
vagrant version
```

```
mkdir vagrant
cd vagrant
vagrant init ubuntu/xenial64
```

Edit the generated `Vagrantfile` and uncomment the following line:

```
  config.vm.network "private_network", ip: "192.168.33.10"
```

Also, insert the following lines after it

```
  # Use the Vagrant insecure public key just to simplify Ansible inventory later
  config.ssh.insert_key = false
```

### Vagrant provisioning

Vagrant allows you to provision your VMs using shell scripts and even supports Ansible.

Because we will be using Ansible with this VM later on we will need Python installed on the VM. Uncomment and edit the following section:

```
  # config.vm.provision "shell", inline: <<-SHELL
  #   apt-get update
  #   apt-get install -y apache2
  # SHELL
```

Replace it with

```
  config.vm.provision "shell", inline: <<-SHELL
    apt-get update
    apt-get install -y python-minimal
  SHELL
```

### Bring up the VM

```
vagrant up
```

This may take some time to boot, but afterwards, we should be ready to SSH into the VM

```
vagrant ssh
```
