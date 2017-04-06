#!/bin/bash

docker push kami11/sample-node

ssh kamikadzeim11@35.187.62.117 << EOF

#docker push kami11/sample-node:latest
docker pull kami11/sample-node:latest
docker stop web || true
docker rm web || true
docker rmi kami11/sample-node:current || true
docker tag kami11/sample-node:latest kami11/sample-node:current
docker run -d --restart always --name web -p 80:80 kami11/sample-node:current
EOF
