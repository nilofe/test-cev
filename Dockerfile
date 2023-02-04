FROM python:3.8

COPY  requirements.txt /tmp/

RUN pip install --requirement /tmp/requirements.txt

EXPOSE 8000

COPY ./app /app

CMD ["uvicorn", "app.main:app", "--host", "127.0.0.1", "--port", "8000"]
