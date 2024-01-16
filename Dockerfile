FROM python:3.9-slim
WORKDIR /app
RUN apt-get update && apt-get install -y git
RUN git clone https://github.com/lidorg-dev/final-python.git .
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 5000
ENV NAME final-python
CMD ["python", "app.py"]
