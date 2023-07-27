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


# ENV Instruction
docker build -t tadeususman/env env

docker image inspect tadeususman/env
docker container create --name env --env APP_PORT=8090 -p 8090:8090 tadeususman/env
docker container start env
docker container ls

# VOLUME Instruction
docker build -t tadeususman/volume volume

docker image inspect tadeususman/volume
docker container create --name volume --volume APP_PORT=8080 -p 8080:8080 tadeususman/volume
docker container start volume
docker container ls
docker container inspect volume

# 4a429d53be0619d37bf300ffb64ec50778803dcfc9000a99d627bc3c1398bf10
docker volume ls


# WORKING DIRECTORY Instruction
docker build -t tadeususman/workdir workdir

docker container create --name workdir -p 8080:8080 tadeususman/workdir
docker container start workdir
docker container exec -i -t workdir /bin/sh

#USER Instruction
docker build -t tadeususman/user user

docker container create --name user -p 8080:8080 tadeususman/user
docker container start user
docker container exec -i -t user /bin/sh


#ARG Instruction
docker build -t tadeususman/arg arg --build-arg app=tad

docker container create --name arg -p 8080:8080 tadeususman/arg
docker container start arg
curl localhost:8080
docker container exec -i -t arg /bin/sh


#HEALTH Instruction
docker build -t tadeususman/health health

docker container create --name health -p 8080:8080 tadeususman/health
docker container start health
curl localhost:8080
docker container exec -i -t health /bin/sh


#ENTRYPOINT Instruction
docker build -t tadeususman/entrypoint entrypoint

docker image inspect tadeususman/entrypoint

docker container create --name entrypoint -p 8080:8080 tadeususman/entrypoint
docker container start entrypoint
curl localhost:8080
docker container exec -i -t entrypoint /bin/sh




#MULTI Instruction
docker build -t tadeususman/multi multi
docker image ls
docker container create --name multi -p 8080:8080 tadeususman/multi
docker container start multi
curl localhost:8080
docker container exec -i -t multi /bin/sh