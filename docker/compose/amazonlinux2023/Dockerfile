FROM openjdk:17-jdk-alpine

# **********************************************************************
# Local Setup 
# **********************************************************************
# Add the Home Affairs Certificate Authorities to the Unix CA Directories
COPY *.crt /usr/local/share/ca-certificates/
RUN update-ca-certificates
ARG LOCAL_PROXY=http://host.docker.internal:8888

# **********************************************************************
# Install curl behind proxy
# **********************************************************************
RUN export http_proxy=${LOCAL_PROXY} \
    && export https_proxy=${LOCAL_PROXY} \
    && export HTTP_PROXY=${LOCAL_PROXY} \
    && export HTTPS_PROXY=${LOCAL_PROXY} \
    && apk update \
    && apk upgrade \
    && apk add --no-cache curl 

RUN addgroup -S spring && adduser -S spring -G spring
USER spring:spring
ARG JAR_FILE=*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
