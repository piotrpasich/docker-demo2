
#Kill all running containers
docker kill $(docker ps -q)

#Delete ALL images
docker rm $(docker ps -a -q)

docker rmi $(docker images -q -f dangling=true)

docker rmi $(docker images -q)
