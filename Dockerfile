FROM python:3

WORKDIR /app

CP . .

RUN pip install -r requirements.txt

EXPOSE 8088

CMD python proxy.py
