#!/usr/bin/env bash
# PROD: ./deploy.sh, STAG: ./deploy.sh 1

container=bunadmin-eg-blog-service
version=1.0.0
port=1337

env=PROD
label="traefik.http.routers.${container}-prod.rule=Host(\`www.${container}.com\`)"

if [[ "$1" == "1" ]]; then
  env=STAG
  label="traefik.http.routers.${container}-stag.rule=Host(\`stag.${container}.com\`)"
fi

STAGING=$1 yarn build

docker volume create ${container}
docker build -t ${container}:${version} . --build-arg STAGING=$1

docker stop ${container}
docker rm ${container}
#docker rmi $(docker images |grep `${container}`)

docker run -d \
-p ${port} \
--name ${container} \
--restart=no \
-e STAGING=$1 \
-v ${container}:/data \
--label ${label} \
--network=traefik_default \
${container}:${version}
