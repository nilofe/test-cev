# Usa la imagen oficial de Python
FROM python:3.9

# Establece el directorio de trabajo en /app
WORKDIR /app

# Copia el archivo de requisitos a la imagen
COPY requirements.txt .

# Instala las dependencias
RUN pip install -r requirements.txt

# Copia todos los archivos al directorio de trabajo en la imagen
COPY . .

# Expone el puerto 8000 para la aplicación FastAPI
EXPOSE 8000

# Comando para ejecutar la aplicación FastAPI
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]

