# Stage 1: Build the Python application
FROM python:3.11-slim AS builder

# Set working directory
WORKDIR /app

# Copy the Python script into the container
COPY calculator.py .

# Install any dependencies (if needed) and prepare the application
# RUN pip install --no-cache-dir -r requirements.txt  # Uncomment if you have dependencies

# Stage 2: Create the final image
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy the Python script from the builder stage
COPY --from=builder /app/calculator.py .

# Set the entry point for the container
ENTRYPOINT ["python", "calculator.py"]

