# UserManager CRUD

## Overview

A Node.js-based CRUD application that manages user data using MongoDB and Mongoose. It provides RESTful APIs for creating, reading, updating, and deleting users, with features like pagination, email validation, and error handling. Ideal for learning or implementing user management functionality in a backend service.

[![Node.js Docker CI/CD Pipeline](https://github.com/ihusnainalii/UserManager-CRUD/actions/workflows/docker-publish.yml/badge.svg)](https://github.com/ihusnainalii/UserManager-CRUD/actions/workflows/docker-publish.yml)

## Table of Contents

- [Features](#features)
- [Technologies](#technologies)
- [Installation](#installation)
- [Usage](#usage)
- [API Endpoints](#api-endpoints)
- [Docker](#docker)

## Features

- Create, Read, Update, and Delete (CRUD) user records.
- Email validation using regex.
- Input validation for required fields.
- Pagination support for retrieving user lists.
- Docker support for easy deployment.

## Technologies

- Node.js
- Express.js
- MongoDB
- Mongoose
- Docker
- dotenv for environment variable management

## Installation

1. Clone the repository:

    ```bash
    git clone https://github.com/ihusnainalii/UserManager-CRUD.git
    cd UserManager-CRUD/crud-node-express
    ```
2. Install dependencies:

    ```bash
    npm install
    ```
3. Create a .env file in the root directory and add your configuration settings:

    ```bash
    APP_NAME=YourAppName
    PORT=3000
    DB_USER=mongo
    DB_PASSWORD=password
    DB_NAME_IP=mongo_db
    DB_PORT=27017
    DB_NAME=node-crud-app
    ```

## Usage
To run the application, you can use:
    ```bash
    npm start
    ```

## API Endpoints
This document outlines the API endpoints for the UserManager CRUD application.


| Method | Endpoint                      | Description                             | Request Body                                                                                          | Responses                                          |
|--------|-------------------------------|-----------------------------------------|--------------------------------------------------------------------------------------------------------|---------------------------------------------------|
| POST   | `/user`                       | Create a new user                      | ```json { "email": "user@example.com", "firstName": "John", "lastName": "Doe", "phone": "1234567890" } ``` | `201 Created`: User created successfully.<br>`400 Bad Request`: Validation error.<br>`409 Conflict`: Email already exists. |
| GET    | `/user?page=1&limit=10`      | Retrieve all users                     | N/A                                                                                                    | `200 OK`: List of users with pagination details.   |
| GET    | `/user/:id`                   | Retrieve a single user                 | N/A                                                                                                    | `200 OK`: User details.<br>`404 Not Found`: User not found. |
| PATCH  | `/user/:id`                   | Update a user                          | ```json { "email": "new_email@example.com", "firstName": "Jane", "lastName": "Doe", "phone": "0987654321" } ``` | `200 OK`: User updated successfully.<br>`400 Bad Request`: Validation error.<br>`404 Not Found`: User not found.<br>`409 Conflict`: Email already exists. |
| DELETE | `/user/:id`                   | Delete a user                          | N/A                                                                                                    | `200 OK`: User deleted successfully.<br>`404 Not Found`: User not found. |


## Environment Variables

Make sure to set the following environment variables:

- `DATABASE_URL`: The URL for the database connection.
- `PORT`: The port on which the server will run (default: 3000).

## Docker

To run the application using Docker, follow these steps:

1. **Build the Docker Image**
   ```bash
   docker build -t imageName .
    ```

2. **Run the Docker Container** 
    ```bash
   docker run -p 3000:3000 imageName
    ```