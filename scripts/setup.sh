#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Function to start SonarQube
start_sonarqube() {
    echo "Starting SonarQube..."
    docker-compose up -d
    echo "SonarQube is starting. Please wait..."
    
    # Wait for SonarQube to be up and running
    while ! curl -s http://localhost:9000/api/system/status | grep -q '"status":"OK"'; do
        echo "Waiting for SonarQube to start..."
        sleep 5
    done

    echo "SonarQube is up and running!"
}

# Function to run SonarQube analysis
run_analysis() {
    echo "Running SonarQube analysis..."
    docker run --rm \
        -e SONAR_HOST_URL="http://localhost:9000" \
        -e SONAR_LOGIN="admin" \
        -e SONAR_PASSWORD="admin" \
        -v "$(pwd):/usr/src" \
        sonarsource/sonar-scanner-cli \
        sonar-scanner
    echo "SonarQube analysis completed!"
}

# Main script execution
start_sonarqube
run_analysis