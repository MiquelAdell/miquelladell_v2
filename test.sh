#!/bin/bash
rm -rf /Users/miqueladell/code/miqueladell_v2/html
docker rm -f miqueladellv2_wordpress_1
docker build -f Dockerfile -t miqueladell/composed_wordpress_test .
docker-compose -f ~/code/miqueladell_v2/docker-compose.yml up
exit 0


docker ps -a
echo "######## CONTAINER ########"
docker exec -i -t miqueladellv2_wordpress_1 ls -l  /var/www/html
echo "######## LOCAL ########"
ls -l /Users/miqueladell/code/miqueladell_v2/html
docker ps -a
