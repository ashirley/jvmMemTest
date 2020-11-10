MAX_RAM_PERCENTAGE=100
DOCKER_MEM=993MB

docker build . -t shirleya-jvm-mem-test
docker run -m ${DOCKER_MEM} --env MAX_RAM_PERCENTAGE=${MAX_RAM_PERCENTAGE} -it --rm shirleya-jvm-mem-test

