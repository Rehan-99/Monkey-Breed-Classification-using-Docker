FROM python:3.9
COPY ./app
WORKDIR /app
RUN pip install -r requirements.txt
EXPOSE 6001
CMD gunicorn --workers=4 --bind 0.0.0.0:6001 app:app