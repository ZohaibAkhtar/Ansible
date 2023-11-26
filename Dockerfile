FROM python:3.12.0rc2-alpine3.18
WORKDIR /usr/src/app
COPY app.py /usr/src/app
RUN pip install --no-cache-dir flask
CMD [ "python", "/usr/src/app/app.py" ]
