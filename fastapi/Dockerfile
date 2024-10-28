FROM python:3.12.7-slim

USER root
WORKDIR /home

RUN apt-get update -y && apt upgrade -y

RUN pip install fastapi[standard]==0.115.3
RUN pip install pydantic==2.9.2

COPY startup.sh /home/startup.sh
RUN chmod +x /home/startup.sh

ENTRYPOINT ["sh","/home/startup.sh"]