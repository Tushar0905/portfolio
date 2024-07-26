FROM python:3.8-slim
WORKDIR /app
COPY src/requirements.txt ./
RUN pip install -r requirements.txt
COPY src /app
EXPOSE 8080
CMD ["python", "server.py"]