FROM ubuntu
RUN apt update
RUN apt install -y install python python-pip vim
RUN apt install -y python python-pip vim
RUN pip install flask
COPY app.py /opt
ENTRYPOINT FLASK_APP=/opt/app.py flash run --host=0.0.0.0
