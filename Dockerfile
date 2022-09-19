#pull python image

FROM python:3.8-alpine

# create working directory
WORKDIR /python-dockerize-app

#Copy requirement of app into working directory
COPY ./requirements.txt /python-dockerize-app/requirements.txt

#Install dependencies
RUN pip install -r requirements.txt

#Copy all contents to the image created
COPY . /python-dockerize-app

ENTRYPOINT ["python"]

CMD ["helloworld.py"]