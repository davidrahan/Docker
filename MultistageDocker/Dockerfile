# Stage 1: Build the Python application
FROM python:3.11-slim AS builder

# Set working directory
WORKDIR /app

# Copy the Python script and requirements file into the container
COPY calculator.py .
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Stage 2: Create the final image
FROM gcr.io/distroless/python3-debian11

# Set working directory
WORKDIR /app

# Copy the Python script and installed dependencies from the builder stage
COPY --from=builder /app/calculator.py .

# Set the entry point for the container
ENTRYPOINT ["python", "calculator.py"]
