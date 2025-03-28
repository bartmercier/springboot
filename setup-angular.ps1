# Install Angular CLI globally if not already installed
npm install -g @angular/cli

# Create new Angular project
ng new frontend --routing=true --style=scss --skip-git

# Navigate to the frontend directory
Set-Location frontend

# Install required dependencies
npm install @angular/material @angular/flex-layout

# Create the project structure
New-Item -ItemType Directory -Force -Path "src/app/services"
New-Item -ItemType Directory -Force -Path "src/app/components"
New-Item -ItemType Directory -Force -Path "src/app/models"

# Create a message service
ng generate service services/message

# Create a message component
ng generate component components/message-list
ng generate component components/message-form

Write-Host "Angular project setup complete!" 