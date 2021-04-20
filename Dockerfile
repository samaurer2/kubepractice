FROM centos

COPY . /workspace

WORKDIR /workspace

RUN yum install -y maven

RUN cd /workspace/build/libs

EXPOSE 8080

ENTRYPOINT [ "java", "-jar", "kubepractice-0.0.1-SNAPSHOT.jar" ]