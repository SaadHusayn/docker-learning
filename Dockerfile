FROM python:3

ENV PYTHONUNBUFFERED=1

COPY . /src
WORKDIR /src

RUN pip install -r requirements.txt
CMD ["python3", "manage.py", "runserver", "127.0.0.1:8000"]