FROM python:3.11

RUN pip install thonny websockets

ENTRYPOINT [ "thonny" ]


