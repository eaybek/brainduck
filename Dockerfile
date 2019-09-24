FROM ubuntu:latest

RUN apt-get update
RUN apt-get -y install \
    python3 \
    python3-venv \
    python3-pip

RUN pip3 install setuptools

COPY /home/erdem/Ws/PyPi/brainduck/brainduck/ /root/packages/brainduck/
WORKDIR /root/packages/brainduck
RUN pip3 install /root/packages/brainduck

CMD ["python3","test/brainduck.py"]


