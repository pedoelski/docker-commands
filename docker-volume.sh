docker volume ls

docker volume create mongovolume

docker volume rm mongovolume

docker container create --name contohmongo --publish 27017:27017 --mount "type=volume,source=mongovolume,destination=/data/db" --env MONGO_INITDB_ROOT_USERNAME=root --env MONGO_INITDB_ROOT_PASSWORD=toor mongo:latest