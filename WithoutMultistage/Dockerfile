# Use the official Python image from the Docker Hub
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the calculator.py script into the container
COPY calculator.py .

# (Optional) Install any required Python packages
# If your script requires additional packages, you can specify them in a requirements.txt file.
# For example:
# COPY requirements.txt .
# RUN pip install --no-cache-dir -r requirements.txt

# Set the command to run your script
CMD ["python", "calculator.py"]

