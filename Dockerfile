# Python-Image verwenden
FROM python:3.11-slim

# Arbeitsverzeichnis setzen
WORKDIR /app

# Abhängigkeiten kopieren und installieren
COPY app/requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# App-Code kopieren
COPY app/ .

# App starten
CMD ["python", "main.py"]

