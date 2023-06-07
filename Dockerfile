FROM python:3.11-buster

RUN pip install thonny websockets

ENTRYPOINT [ "thonny" ]


