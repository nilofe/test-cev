FROM python:3.10

COPY  requirements.txt /tmp/

RUN pip install --requirement /tmp/requirements.txt

EXPOSE 8000

COPY ./app /app

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
