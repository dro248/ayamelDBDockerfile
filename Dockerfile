# database Dockerfile creator
FROM mysql:latest

# install tools
RUN apt-get update
RUN apt-get install wget -y

# download ayamel.sql
RUN wget http://192.168.1.100:8080/ayamel.sql

# import ayamel.sql into database
RUN mysql -uroot

RUN create database yvideodb;
RUN use yvideodb;
RUN exit;

RUN mysql -uroot -ptest yvideodb < ayamel.sql