FROM python:3.6.9

ARG WORKER
ADD ./workers/${WORKER} /app

WORKDIR /app
RUN pip install -r requirements.txt
CMD [ "python", "main.py" ]