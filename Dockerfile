# 1. Usa una imagen base oficial de Python 3. Usamos la versión 'slim' que es más ligera.
FROM python:3.10-slim

# 2. Establece un directorio de trabajo dentro del contenedor
WORKDIR /app

# 3. Copia primero el archivo de dependencias
COPY requirements.txt .

# 4. Instala las dependencias que definimos en requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# 5. Copia el resto del código de tu proyecto al directorio de trabajo
COPY . .

# 6. Define el comando que se ejecutará cuando el contenedor se inicie
# Asegúrate de que 'main.py' es el nombre de tu archivo principal que arranca la aplicación.
CMD ["python", "main.py"]
