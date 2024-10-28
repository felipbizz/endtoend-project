FROM python:3.12.7-slim

USER root
WORKDIR /home

RUN apt-get update -y && apt upgrade -y

RUN pip install streamlit==1.39.0

COPY startup.sh /home/startup.sh
RUN chmod +x /home/startup.sh

ENTRYPOINT ["sh","/home/startup.sh"]