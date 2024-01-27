FROM alpine:3.19.1

RUN  apk --no-cache add openjdk11 git

RUN \
    git clone https://github.com/cl456852/securepipeline && \
    cd securepipeline && \
    ./mvnw clean package

WORKDIR /securepipeline

CMD ["./mvnw","cargo:run","-P tomcat90"]

EXPOSE 8080