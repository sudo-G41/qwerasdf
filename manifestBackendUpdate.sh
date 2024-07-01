#!/bin/bash
URI="580103579984.dkr.ecr.ap-northeast-2.amazonaws.com/goorm3team/goormbank:Backend"
FILE="backend-api-deployment-service.yaml"

sed -i "s#$URI*#$URI$1#g" $FILE
git add $FILE
git commit -m "[UPDATE] Backend$1 image versioning"
git push origin main
