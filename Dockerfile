FROM centos

COPY . /workspace

WORKDIR /workspace

RUN yum install -y maven

EXPOSE 8080

ENTRYPOINT [ "java", "-jar", "kubepractice-0.0.1-SNAPSHOT.jar" ]