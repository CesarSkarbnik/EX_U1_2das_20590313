FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# Usamos el puerto 5000 que es el estándar de Flask
CMD ["gunicorn", "-b", "0.0.0.0:5000", "app:app"]