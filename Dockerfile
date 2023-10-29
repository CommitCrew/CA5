FROM python:3.9
WORKDIR /app
COPY . /app
RUN pip install -r requirements.txt
EXPOSE 5050
ENV USERNAME=commitcrew
CMD ["python", "app.py"]