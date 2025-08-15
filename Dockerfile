FROM python:3.8-slim-bullseye
WORKDIR /app
COPY . /app

# Install AWS CLI via pip to avoid apt timeouts
RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir awscli

RUN pip install --no-cache-dir -r requirements.txt
CMD ["python3", "app.py"]
