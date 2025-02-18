FROM python:3.11-slim

WORKDIR /root

COPY requirements.txt /root/

RUN pip install --no-cache-dir -r requirements.txt

COPY ./app .

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000", "--reload"]