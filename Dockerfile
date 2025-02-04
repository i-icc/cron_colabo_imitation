FROM ubuntu:22.04

USER root

RUN apt-get update && \
    apt-get install -y sudo cron&& \
    echo "%sudo ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

# start.shを生成
RUN echo '#!/bin/bash' >> /usr/bin/start.sh \
    && echo '/usr/sbin/cron' >> /usr/bin/start.sh \
    && echo 'jupyter-lab --ip=0.0.0.0 --port=8888 --allow-root --NotebookApp.token=""' >> /usr/bin/start.sh \
    && chmod +x /usr/bin/start.sh

# Python 3.11 をインストール
RUN apt-get install -y python3.11 python3-pip

COPY requirements.txt /home/jovyan/work/
WORKDIR /home/jovyan/work

RUN pip install --upgrade pip
RUN pip install -r requirements.txt 

# Crontabファイルをコピー
COPY ./work/cron/crontab /etc/crontab

RUN adduser --disabled-password --gecos "" jovyan && \
    adduser jovyan sudo

CMD ["/usr/bin/start.sh"]