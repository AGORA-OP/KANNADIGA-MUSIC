FROM nikolaik/python-nodejs:python3.9-nodejs16

RUN apt update && apt upgrade -y
RUN apt install git curl python3-pip ffmpeg -y

RUN cd /
RUN git clone https://github.com/AGORA-OP/KANNADIGA-MUSIC
RUN cd KANNADIGA-MUSIC
WORKDIR /KANNADIGA-MUSIC

RUN pip3 install --upgrade pip
RUN pip3 install -U -r requirements.txt

CMD python3 main.py
