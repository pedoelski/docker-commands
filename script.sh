# FROM Instruction
docker build -t pedoelski/from  from

docker image ls

# RUN Instruction
docker build -t pedoelski/run run

# with progress
docker build -t pedoelski/run run --progress=plain --no-cache


# COMMANDS Instruction
docker build -t pedoelski/command command --progress=plain --no-cache

docker image inspect pedoelski/command

docker container create --name command pedoelski/command

docker container start command

docker container logs command


# LABEL Instruction
docker build -t pedoelski/label label

docker image inspect pedoelski/label

docker container create --name label pedoelski/label



# ADD Instruction
docker build -t pedoelski/add add

docker image inspect pedoelski/add

docker container create --name add pedoelski/add


# COPY Instruction
docker build -t pedoelski/copy copy

docker image inspect pedoelski/copy

docker container create --name copy pedoelski/copy



# IGNORE Instruction
docker build -t pedoelski/ignore ignore

docker image inspect pedoelski/ignore

docker container create --name ignore pedoelski/ignore

docker container start ignore

docker container logs ignore


# EXPOSE Instruction
docker build -t pedoelski/expose expose

docker image inspect pedoelski/expose

docker container create --name expose --publish 8080:8080 pedoelski/expose

docker container start expose