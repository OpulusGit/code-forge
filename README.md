# A continuous integration project #

```css
_________            .___       ___________                         
\_   ___ \  ____   __| _/____   \_   _____/__________  ____   ____  
/    \  \/ /  _ \ / __ |/ __ \   |    __)/  _ \_  __ \/ ___\_/ __ \
\     \___(  <_> ) /_/ \  ___/   |     \(  <_> )  | \/ /_/  >  ___/
 \______  /\____/\____ |\___  >  \___  / \____/|__|  \___  / \___  >
        \/            \/    \/       \/             /_____/      \/
```

## Purpose ##

The code forge is an educational project aimed to create a continuous
integration pipeline to code in many programming langages.

## Services ##

In this repository, you will have many services available to assist you during
any development.

### VSCode ###

![alt-text](./pictures/vscode.png "VSCode")

The VSCode allows you to code directly inside your browser at any place if the
project is deployed on the cloud.<br/>
<br/>
Before to connect, you have to notice the password written in the sheel after
having start the docker environment.<br/>
<br/>
This password is required on the IDE web interface.<br/>
Then, to work with this IDE, just to go on :
[http://localhost:8443](https://localhost:8443)

### GitLab ###

![alt-text](./pictures/gitlab.png "GitLab")

There is in this project a GitLab versioning application.<br/>
To work on your personal GitLab server, just go on :
[http://localhost:80](http://localhost:80)

### Portainer ###

![alt-text](./pictures/portainer.png "Portainer")

The portainer interface is used to manage all of your containers.<br/>
To go on the portainer interface, you have to do some configurations.

#### How to change the portainer credentials ####

Default is : user=admin password=test<br/>
<br/>
You have for that a tool on the <strong>portainer/tools</strong> directory
named <strong>create-pass-hash.sh</strong>.<br/>
To use it, enter the following commands in the portainer/tools directory :

```bash
./create-pass-hash.sh
```

Then follow the indications.<br/>
After that, you have to change the docker-compose.yml file to enter the new
password.<br/>
So change this line :

```yml
portainer:
    command: --admin-password $$2y$$05$$xpzJzEzLAxRX1m/6bvmIi.sEM8iE.sKUAimHG7b9B4pDjUkeB.QDG
```

By this line including your password hash.

```yml
portainer:
    command: --admin-password your-new-hash
```

Make sure to <strong>add a $ before each $ inside the hash</strong>.
<strong>For instance :</strong>

```txt
$ze1$evzz$zezcz -> $$ze1$$evzz$$zezcz
```

To connect to the Portainer interface, just go on :
[http://localhost:9500](http://localhost:9500)

### Docker Registry ###

![alt-text](./pictures/docker.png "Registry")

The docker registry is accessible at :
[http://localhost:5500](https://localhost:5500)
