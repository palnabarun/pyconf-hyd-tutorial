FROM python:3.8
LABEL MAINTAINER Nabarun Pal <hey@naba.run>

WORKDIR /app
ADD requirements.txt file.txt /app/

RUN pip install -r requirements.txt

ADD app.py .

EXPOSE 8080

CMD ["python", "app.py"]
