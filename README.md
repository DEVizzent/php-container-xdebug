# php-container-xdebug

## How to install xdebug in a docke image

Take a look to [Dockerfile](docker%2Fphp%2FDockerfile)

## How to configure xdebug in our project

You have our example configuration:
[docker-php-ext-xdebug.ini](docker%2Fphp%2Frootfs%2Fusr%2Flocal%2Fetc%2Fphp%2Fconf.d%2Fdocker-php-ext-xdebug.ini)

## How to set up the container

```
    environment:
      PHP_IDE_CONFIG: 'serverName=host.docker.internal' ## to work with xdebug in docker requests
      XDEBUG_TRIGGER: ## to work with xdebug in docker cli scripts
    extra_hosts:
      - "host.docker.internal:host-gateway" ## to be able to reach the container from our IDE    
```

## How to configure PhpStorm to connect Xdebug

1. To configure the PhpStorm with the xdebug go to edit configurations
![edit-configurations.png](images%2Fedit-configurations.png)
2. Click on add configuration and PHP Remote Debug
![add-configuration.png](images%2Fadd-configuration.png)
3. We have to give a name to this config, I suggest your name project and add the ide key
and configure a new server. IDE key must be the same we configure in xdebug.ini
![configure-project.png](images%2Fconfigure-project.png)
4. We most to give a name to the server, set the host, the port used to comunicate and the directory mapping.
![configure-server.png](images%2Fconfigure-server.png)
5. After save the changes you can activate the debug mode and run an script
![activate-debug.png](images%2Factivate-debug.png)