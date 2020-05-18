FROM python:3.8

RUN pip install pipenv

ADD . /api

WORKDIR /api

RUN pipenv install --system --skip-lock

EXPOSE 5000

CMD gunicorn -k eventlet --workers=1 --bind 0.0.0.0:5000 wsgi:app --reload