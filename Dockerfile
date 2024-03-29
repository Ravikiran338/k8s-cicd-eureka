FROM openjdk:8
MAINTAINER Radiant Digital
EXPOSE 8761
ADD target/*.jar /msa-eureka.jar
RUN bash -c 'touch /msa-eureka.jar'
CMD ["java","-Dspring.profiles.active=docker","-jar","/msa-eureka.jar"]
