FROM python:3.10
WORKDIR /app
COPY . /app
RUN pip install virtualenv
RUN virtualenv venv
SHELL ["/bin/bash", "-c"]
RUN source venv/bin/activate
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
EXPOSE 8080
ENV USERNAME=commitcrew
CMD ["python", "app.py"]