FROM python:3.12.7-slim

USER root
WORKDIR /home
RUN apt-get update -y && apt upgrade -y
RUN apt-get install fish -y

RUN pip install jupyterlab==4.2.5

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY startup.sh /home/startup.sh
RUN chmod +x /home/startup.sh

ENTRYPOINT ["sh","/home/startup.sh"]