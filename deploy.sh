#!/bin/bash

ssh -o StrictHostKeyChecking=no -i "/root/.ssh/newpem.pem" ec2-user@13.234.77.141
docker pull karthidevops1/dev:latest
docker run -itd -p 80:3000 --name mycont karthidevops1/dev:latest

