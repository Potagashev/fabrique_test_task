FROM python:3.11
EXPOSE 80

ADD . /app
WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY entrypoint.sh .
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
