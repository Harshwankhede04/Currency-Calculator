# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app/

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port (assuming your app runs on port 8000)
EXPOSE 8000

# Run the command to start your Django app (replace with appropriate command if different)
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

