# Dockerfile para o Flask
FROM python:3.9-slim

# Configurações
WORKDIR /sms-webscraping

# Copia os arquivos de requirements
COPY requirements.txt .

# Instala as dependências
RUN pip install --no-cache-dir -r requirements.txt

# Copia o código da aplicação
COPY sms-webscraping.py .

# Exponha a porta que o Flask usará
EXPOSE 8080

# Comando para iniciar o Flask
CMD ["python", "sms-webscraping.py"]
