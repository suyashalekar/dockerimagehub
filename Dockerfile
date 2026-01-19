# Use official python image from docker hub
FROM python:3.9-slim 

# Set the working directory
WORKDIR /app 

# Copy the current dire tory contents into the ocntainer at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install flask

# Make port 5000 available to the world outside this container
EXPOSE 5000

# Run app.py when the container launches 
CMD [ "python", "app.py" ]