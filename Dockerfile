FROM python:3.13.9-alpine3.22
WORKDIR /app/
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY  . .
EXPOSE 5050
CMD ["gunicorn", "-b", "0.0.0.0:5050", "app:app"]