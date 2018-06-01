FROM	python:3.6-stretch

ENV     DEBIAN_FRONTEND noninteractive

WORKDIR /conf
VOLUME	/data /conf

RUN	apt-get update && \
        apt-get install -y --no-install-recommends git wget curl python3-dev python3-pip libxml2-dev python-lxml python-requests python-pyinotify && \
        rm -rf /var/lib/apt/lists/*

RUN	git clone https://github.com/splitbrain/Watcher && \
	mv Watcher/watcher.py /usr/bin/ && \
	mv Watcher/*.ini /conf && \
	chmod +x /usr/bin/watcher.py

#RUN	watcher.py -c /conf/watcher.ini start






