# Start with a Linux micro-container to keep the image tiny
FROM python:3.9-slim

# Establish a working folder
WORKDIR /app

# Establish dependencies
COPY requirements.txt .
RUN python -m pip install --no-cache-dir -U pip wheel && \
    pip install --no-cache-dir -r requirements.txt

# Copy source files last because they change the most
COPY service/ ./service/

# Become non-root
RUN useradd --uid 1000 theia && chown -R theia /app
USER theia

# Run the service on port 8080
EXPOSE 8080
CMD ["gunicorn", "--bind=0.0.0.0:8080", "--log-level=info", "service:app"]
