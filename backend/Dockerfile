FROM python:3.8.10
WORKDIR /usr/src/app
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
COPY . .
CMD ["flask", "--app", "app","--host=0.0.0.0", "--debug", "run"]
EXPOSE 5000
