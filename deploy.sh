#!/bin/bash
ssh -i "/var/lib/jenkins/.ssh/newpem.pem" ec2-user@13.234.77.141 << EOF
docker login --username karthidevops1 --password Kandasamy@123
docker pull karthidevops1/prod:latest
docker run -itd -p 80:3000 --name mycont4 karthidevops1/prod:latest
EOF

