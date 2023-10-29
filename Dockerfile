FROM python:3.9
WORKDIR /task05
COPY . /task05
RUN pip install -r requirements.txt
EXPOSE 8080
ENV USERNAME=commitcrew
CMD ["python", "app.py"]