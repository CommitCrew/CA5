FROM python:3.9
WORKDIR /app
COPY . /app

# Update the package manager
RUN apt-get update

# Upgrade pip first
RUN pip install --upgrade pip

# Install the packages from requirements.txt
RUN pip install -r requirements.txt

EXPOSE 8080
ENV USERNAME=commitcrew
CMD ["python", "app.py"]