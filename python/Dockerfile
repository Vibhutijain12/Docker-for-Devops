FROM python:3.11-alpine

WORKDIR /app

COPY . .

COPY requirement.txt . 

RUN pip install --no-cache-dir -r requirement.txt

CMD ["python", "app.py"]
