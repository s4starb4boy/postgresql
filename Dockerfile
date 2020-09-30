# Pull base image
FROM python:3.8

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set work directory
WORKDIR /dockerprojects

# Install dependencies
COPY Pipfile Pipfile.lock /dockerprojects/
RUN pip install pipenv && pipenv install --system

# Copy project
COPY . /dockerprojects/