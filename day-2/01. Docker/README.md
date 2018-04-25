## Docker

### Installing Docker

For Ubuntu, follow the instructions at: [https://docs.docker.com/install/linux/docker-ce/ubuntu/](https://docs.docker.com/install/linux/docker-ce/ubuntu/)

For mac OS, either use Homebrew (`brew install docker`), or use Docker for Mac: [https://www.docker.com/docker-mac](https://www.docker.com/docker-mac)

#### Verify that Docker is working

```
$ docker version
Client:
 Version:	18.03.0-ce
 API version:	1.37
 Go version:	go1.9.4
 Git commit:	0520e24
 Built:	Wed Mar 21 23:06:22 2018
 OS/Arch:	darwin/amd64
 Experimental:	false
 Orchestrator:	swarm

Server:
 Engine:
  Version:	18.03.0-ce
  API version:	1.37 (minimum version 1.12)
  Go version:	go1.9.4
  Git commit:	0520e24
  Built:	Wed Mar 21 23:14:32 2018
  OS/Arch:	linux/amd64
  Experimental:	true
```

#### Run MariaDB

```
docker run --rm --name db -e MYSQL_ROOT_PASSWORD=secret mariadb:10.3
```

```
docker run --rm --name wp --link db:mysql -p 8000:80 wordpress:4.9.5
```

### Commands

#### `docker images`

#### `docker pull`

#### `docker run`

* `--rm` Remove the container on exit
* `-it` Interactive, terminal
* `-d` Daemon
* `--name`

#### `docker logs`

* `-f` Follow

#### `docker ps`

#### `docker system`

#### `docker volume`
