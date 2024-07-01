#!/bin/bash
sed -i "s/goormbank:Frontend*/goormbank:Frontend$1/g" front-end-deployment-service.yaml
git add front-end-deployment-service.yaml
git commit -m "[UPDATE] Frontend$1 image versioning"
git push origin main
