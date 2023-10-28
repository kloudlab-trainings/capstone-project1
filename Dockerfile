# Use the official Python image from the Docker Hub
FROM python:3.8

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install Flask and other dependencies
RUN pip install Flask

# Expose the port that the Flask app runs on
EXPOSE 5000

# Define the command that should be executed when the container starts
CMD ["python", "app.py"]
