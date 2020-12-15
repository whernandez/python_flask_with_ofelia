FROM tiangolo/uwsgi-nginx-flask:python3.7

COPY ./app /app

# Install tools
RUN apt-get update
RUN apt-get install nano

# Install the dependencies
RUN pip install -r requirements.txt
