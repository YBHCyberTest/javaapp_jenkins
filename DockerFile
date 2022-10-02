FROM anapsix/alpine-java
LABEL maintainer="muratys8877@gmail.com"
COPY Main.class /home/Main.class 
CMD ["java","/home/Main.class"]
