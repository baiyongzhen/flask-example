FROM python:3.7-alpine
COPY . /app
WORKDIR /app
RUN pip install .
RUN flask_example create-db
RUN flask_example populate-db
RUN flask_example add-user -u admin -p admin
EXPOSE 5000
CMD ["flask_example", "run"]
