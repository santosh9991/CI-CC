FROM ubuntu:16.04
MAINTAINER santosh kesireddy "sk942g@att.com"
RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential

#Add some files
COPY . /app
WORKDIR /app

#install python
RUN pip install flask

EXPOSE 80
CMD "python" "/app/app.py"

#CMD ["python /app/app.py"]
