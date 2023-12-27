#!/bin/bash

EC2_INSTANCE_IP="13.234.77.141"
ssh -T -i /root/.ssh/newpem.pem ec2-user@$EC2_INSTANCE_IP <<EOF
docker pull karthidevops1/dev:latest
docker run -itd -p 80:3000 --name mycont karthidevops1/dev:latest

EOF

