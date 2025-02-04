FROM jupyter/base-notebook:python-3.11

USER root

RUN apt-get update && \
    apt-get install -y sudo cron && \
    echo "%sudo ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

# start.shを生成
RUN echo '#!/bin/bash' >> /usr/bin/start.sh \
    && echo '(crontab /etc/crontab; /usr/sbin/cron)' >> /usr/bin/start.sh \
    && echo 'start-notebook.py --ip=0.0.0.0 --port=8888 --allow-root --NotebookApp.token=""' >> /usr/bin/start.sh \
    && chmod +x /usr/bin/start.sh

# jupyter_serverのインストール
# RUN pip install --upgrade pip && \
#     pip install jupyter_server

COPY requirements.txt /home/jovyan/work/
WORKDIR /home/jovyan/work

RUN pip install -r requirements.txt 

# Crontabファイルをコピー
COPY ./work/cron/crontab /etc/crontab

RUN adduser jovyan sudo

CMD ["/usr/bin/start.sh"]