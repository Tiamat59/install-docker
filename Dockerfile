FROM ubuntu
RUN apt update && \
    apt install -y python python-pip vim && \
    pip install flask
COPY app.py /opt
ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0
