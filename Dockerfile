# Використовується Python 3.9 як базовий образ
FROM python:3.9-slim

# Встановлюємо робочу директорію
WORKDIR /app

# Копіюємо залежності
COPY requirements /app
RUN pip install --no-cache-dir -r requirements

# Копіюємо весь код
COPY . /app

# Вказуємо команду для запуску додатку
CMD ["python", "app.py"]
