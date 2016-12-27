# database Dockerfile creator
FROM mysql:latest

# copy ayamel.sql
RUN apt-get update
RUN apt-get install wget -y