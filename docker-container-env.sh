docker container create --name contohmongo --publish 27017:27017 --env MONGO_INITDB_ROOT_USERNAME=root --env MONGO_INITDB_ROOT_PASSWORD=toor mongo:latest