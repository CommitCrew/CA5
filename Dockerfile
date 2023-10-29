FROM python:3.9
WORKDIR /app
COPY . /app
RUN pip install flask
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 8080
ENV USERNAME=commitcrew
CMD ["python", "app.py"]