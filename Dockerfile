FROM python:latest

WORKDIR /flask_app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

RUN pip install pytest

COPY app/ .

COPY tests/ app/tests/

CMD [ "python", "app.py" ]
