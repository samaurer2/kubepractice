FROM ubuntu
# FROM you specifiy a base image (background environment)
# create an enviornment that has centos in it

COPY . /workspace
# copy everything in the current directory of this docker file
# and put it in the virtual enviornment under the root directory
# called /workspace
# on your PC the root directory for most things is your C: drive
# in this enviornment we are creating it will be /workspace
RUN ./workspace/gradlew bootjar
WORKDIR /workspace
# when you write commands what directory they will execute in
RUN pwd
RUN apt update
RUN apt-get install -y maven
RUN pwd
RUN cd workspace
RUN pwd

# any commands you need to run while building the imagew

EXPOSE 8080
# this allows the container to be accessed on that port

ENTRYPOINT [ "java", "-jar", "kubepractice-0.0.1-SNAPSHOT.jar" ]