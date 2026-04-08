<<<<<<< HEAD
FROM python:3.9-slim

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["python", "digit_recognition_cnn.py"]
=======
FROM python:3.9-slim

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["python", "digit_recognition_cnn.py"]
>>>>>>> e0cc833c6cbb17e2e8549a1aae44ff844e2cf58d
