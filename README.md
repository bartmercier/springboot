# Spring Boot with Angular Demo

This is a full-stack application demonstrating the integration of Spring Boot backend with Angular frontend.

## Prerequisites

- Java 17 or later
- Node.js and npm
- Angular CLI

## Project Structure

- Backend: Spring Boot application (port 8080)
- Frontend: Angular application (port 4200)

## Setup Instructions

### Backend Setup

1. Navigate to the project root directory
2. Run the Spring Boot application:
   ```bash
   ./mvnw spring-boot:run
   ```
3. The backend will be available at http://localhost:8080

### Frontend Setup (Windows)

1. Open PowerShell as Administrator and run:
   ```powershell
   Set-ExecutionPolicy RemoteSigned
   ```
   Type 'Y' when prompted.

2. Install Angular CLI globally:
   ```powershell
   npm install -g @angular/cli
   ```

3. Run the setup script:
   ```powershell
   .\setup-angular.ps1
   ```

4. Navigate to the frontend directory:
   ```powershell
   cd frontend
   ```

5. Install dependencies:
   ```powershell
   npm install
   ```

6. Start the Angular development server:
   ```powershell
   ng serve
   ```

7. The frontend will be available at http://localhost:4200

### Frontend Setup (Linux/Mac)

1. Make the setup script executable:
   ```bash
   chmod +x setup-angular.sh
   ```

2. Run the setup script:
   ```bash
   ./setup-angular.sh
   ```

3. Navigate to the frontend directory:
   ```bash
   cd frontend
   ```

4. Install dependencies:
   ```bash
   npm install
   ```

5. Start the Angular development server:
   ```bash
   ng serve
   ```

6. The frontend will be available at http://localhost:4200

## Features

- RESTful API endpoints for message management
- H2 in-memory database
- Angular Material UI components
- Responsive design
- Cross-origin resource sharing (CORS) enabled

## API Endpoints

- GET /api/messages - Get all messages
- POST /api/messages - Create a new message
- GET /api/messages/{id} - Get a specific message by ID

## Development

- Backend: Use your preferred IDE (IntelliJ IDEA, Eclipse, etc.)
- Frontend: Use VS Code with Angular Language Service extension

## Troubleshooting

If you encounter issues with Angular CLI on Windows:

1. Make sure Node.js is properly installed:
   ```powershell
   node --version
   npm --version
   ```

2. If Angular CLI is not found, try:
   ```powershell
   npm cache clean --force
   npm install -g @angular/cli
   ```

3. If you get permission errors, run PowerShell as Administrator and try again.

# Get all messages
GET http://localhost:8080/api/messages

# Create a new message
POST http://localhost:8080/api/messages
Content-Type: application/json

{
    "content": "Hello, World!"
}

# Get a specific message
GET http://localhost:8080/api/messages/1 