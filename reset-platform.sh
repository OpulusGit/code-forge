#!/bin/bash
sudo rm -R ./gitlab/data ./jenkins/data ./portainer/data 2> /dev/null
sudo docker-compose rm