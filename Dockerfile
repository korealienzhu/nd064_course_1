FROM python:3.8

COPY ./techtrends /app

WORKDIR /app

# import dependencies and build the application
RUN  pip3 install -r requirements.txt && python3 init_db.py

EXPOSE 3111

CMD [ "python", "app.py" ]
