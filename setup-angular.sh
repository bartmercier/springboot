#!/bin/bash

# Install Angular CLI globally if not already installed
npm install -g @angular/cli

# Create new Angular project
ng new frontend --routing=true --style=scss

# Navigate to the frontend directory
cd frontend

# Install required dependencies
npm install @angular/material @angular/flex-layout

# Create the project structure
mkdir -p src/app/services
mkdir -p src/app/components
mkdir -p src/app/models

# Create a message service
ng generate service services/message

# Create a message component
ng generate component components/message-list
ng generate component components/message-form

echo "Angular project setup complete!" 