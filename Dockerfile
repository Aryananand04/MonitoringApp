FROM python:3.9-slim-buster

# Install build dependencies
RUN apt-get update && apt-get install -y gcc python3-dev

# Set the working directory
WORKDIR /app

# Copy the requirements.txt file
COPY requirements.txt .

# Install the required Python packages
RUN pip3 install --no-cache-dir -r requirements.txt

# Copy the rest of the application files
COPY . .

# Expose the port
EXPOSE 5000

# Set the command to run the app
CMD ["python3", "app.py"]

