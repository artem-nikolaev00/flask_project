# Использовать официальный образ Python
FROM python:latest

# Установить зависимости
COPY requirements.txt /app/requirements.txt
WORKDIR /app
RUN pip install -r requirements.txt

# Скопировать исходный код приложения
COPY . /app

# Указать порт, на котором будет работать приложение Flask
EXPOSE 8000

# Запустить приложение Flask
CMD ["python", "app.py"]
