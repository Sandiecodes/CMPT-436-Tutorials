#pull python image

FROM python:3.8-alpine

# create working directory
WORKDIR /app

#Copy requirement of app into working directory
COPY requirements.txt ./

#Install dependencies
RUN pip install -r requirements.txt

#Copy all contents to the image created
COPY . .

EXPOSE 5000

#ENTRYPOINT ["python"]

CMD [ "flask", "run","--host","0.0.0.0","--port","5000"]
#CMD ["helloworld.py"]