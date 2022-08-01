docker network ls

docker network create --driver bridge contohnetwork

docker network rm contohnetwork

docker network disconnect mongonetwork mongodb

docker network connect mongonetwork mongodb