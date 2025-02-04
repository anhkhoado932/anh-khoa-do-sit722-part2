FROM python:3.7-slim

WORKDIR /app

COPY book_catalog /app

RUN pip install -r requirements.txt

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]