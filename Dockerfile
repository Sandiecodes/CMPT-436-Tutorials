FROM python:latest

#EXPOSE 8000

WORKDIR /usr/src/app

COPY . .
RUN ls
ENTRYPOINT [ "python3","socketserver.py" ]
#pull python image

#FROM python:3.8-alpine

# create working directory
#WORKDIR /python-server-client

#Port for server
#EXPOSE 8000

#Copy all contents to the image created
#COPY socketserver.py ./
#COPY socketclient.py ./ 





