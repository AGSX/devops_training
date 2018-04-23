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