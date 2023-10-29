FROM python:3.9
WORKDIR /app
COPY . /app
RUN pip install flask
RUN pip install my-sql-connector
EXPOSE 8080
ENV USERNAME=commitcrew
CMD ["python", "app.py"]