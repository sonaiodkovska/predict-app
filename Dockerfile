# Użyj lekkiego obrazu z Pythonem
FROM python:3.11-slim

# Ustaw katalog roboczy wewnątrz kontenera
WORKDIR /app

# Skopiuj plik z zależnościami i zainstaluj pakiety
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Skopiuj całą aplikację
COPY . .

# Uruchom aplikację
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]
