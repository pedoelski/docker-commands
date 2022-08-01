# Example
#create network
docker network create mongonetwork
#create container database mongodb assign network
docker container create --name mongodb --network mongonetwork --env MONGO_INITDB_ROOT_USERNAME=root --env MONGO_INITDB_ROOT_PASSWORD=toor mongo:latest
#pull image mongodb-express
docker image pull mongo-express
#create container mongo-express assign network
docker container create --name mongodbexpress --network mongonetwork --publish 8081:8081 --env ME_CONFIG_MONGODB_URL="mongodb://root:toor@mongodb:27017/" mongo-express:latest
#start container mongodb
docker container start mongodb
#start container mongodbexpress
docker container start mongodbexpress
