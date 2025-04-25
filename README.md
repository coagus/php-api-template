# php-api-template

A template project for building APIs using PHP with a containerized development environment.

## Description

This template provides a structured foundation for developing APIs in PHP, utilizing the php-api-builder framework. It includes a pre-configured development environment using Docker containers for consistent and isolated development.

## Features

- Pre-configured Docker environment
- PHP API Builder integration
- Development scripts for easy environment management
- Customizable container settings
- Example configuration files

## Development Environment

### Initial Setup

Before starting development, you should customize your environment:

1. Run `dev-setup.sh` to configure:
   - Container names
   - Port mappings
   - Environment variables
   - Other Docker-specific settings

### Development Commands

- `dev-up.sh`: Starts the development environment
  - Launches all necessary containers
  - Sets up network connections
  - Mounts volumes
  
- `dev-down.sh`: Stops the development environment
  - Gracefully stops all containers
  - Cleans up resources :

## Project Setup

When ready to use this template in your final project:

1. Copy all necessary files to your project
2. You can safely ignore copying:
   - `example.gitignore`
   - `example.htaccess`
   - `dev-setup.sh`
3. Ensure your `dev-up.sh` is properly configured with your customized settings

## Requirements

- Docker
- Docker Compose

