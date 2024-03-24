FROM python:3.6

RUN mkdir -p /opt/djangoSIGE/
WORKDIR /opt/djangoSIGE/

RUN git clone https://github.com/thiagopena/djangoSIGE.git .

RUN apt update

RUN apt install -y python3 python3-dev \
    python3-cffi zlib1g-dev gcc libjpeg-dev \
    libssl-dev \
    libxml2-dev libxslt-dev \
    musl-dev libpq-dev

RUN pip3 install --upgrade pip

RUN pip3 install -r requirements.txt

RUN pip3 install gunicorn psycopg2