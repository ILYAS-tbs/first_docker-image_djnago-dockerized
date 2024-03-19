# Dockerising - projects 

## the challenges i faced here are : 

 ## 1 : didn't know that docker engin + CLI != docker desktop
### they will operated differently unless u do some switching of context in ur linux machine

``` bash 
   docker context ls 

```
- will see : default * , desktop-linux

### switch to desktop-linux to sync both the docker engine + CLI & docker-desktop this means getting best of both worlds

```bash 
docker context use desktop-linux
``` 


## second challenge : 

## pip : refuses to work or install packages as root , and u r root by default in docker container 

## solution : i found about the :USER directive in docker:
-- created : passwordless linux users for the Virtual machine in the container
-- u can switch back and forth between the root and other users created
