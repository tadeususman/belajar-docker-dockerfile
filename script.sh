# FROM instruction
docker build -t tadeususman/from from

docker image ls


# RUN instruction
docker build -t tadeususman/run run

docker build -t tadeususman/run run --progress=plain --no-cache


# CMD instruction
docker build -t tadeususman/command command

docker container create --name command tadeususman/command
docker container logs command


# LABEL instruction
docker build -t tadeususman/label label

docker image inspect tadeususman/label


# ADD instruction
docker build -t tadeususman/add add

docker container create --name add tadeususman/add
docker container start add
docker container logs add


# COPY instruction
docker build -t tadeususman/copy copy

docker container create --name copy tadeususman/copy
docker container start copy
docker container logs copy


# .dockerignore

docker build -t tadeususman/ignore ignore

docker container create --name ignore tadeususman/ignore
docker container start ignore
docker container logs ignore


# EXPOSE

docker build -t tadeususman/expose expose

docker imange inspect tadeususman/expose
docker container create --name expose -p 8080:8080 tadeususman/expose
docker container start expose
docker container ls





