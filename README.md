# SonarQube Setup

This project provides a complete setup for running SonarQube using Docker Compose. It includes all necessary configurations and scripts to get started with code analysis.

## Project Structure

The project consists of the following files:

- **docker-compose.yml**: Defines the services, networks, and volumes for the SonarQube setup.
- **sonar-project.properties**: Contains the configuration for the SonarQube project, including project key, name, version, and source directories.
- **README.md**: Documentation for setting up and running the SonarQube instance.
- **scripts/setup.sh**: A shell script that automates the setup process for SonarQube.

## Getting Started

To set up and run SonarQube, follow these steps:

1. **Clone the repository**:
   ```bash
   git clone https://github.com/mvadly/jenkins-with-sonarqube.git
   cd infolelang-assets/sonarqube-setup
   ```

2. **Start the SonarQube instance**:
   Use Docker Compose to start the services defined in `docker-compose.yml`:
   ```bash
   docker-compose up -d
   ```

3. **Access SonarQube**:
   Once the services are running, you can access the SonarQube dashboard at `http://localhost:9000`. The default credentials are:
   - Username: admin
   - Password: admin

4. **Run the setup script**:
   Execute the setup script to initialize the database and run the analysis:
   ```bash
   ./scripts/setup.sh
   ```

## Configuration

You can customize the SonarQube setup by modifying the `sonar-project.properties` file. This file allows you to specify various settings for your project analysis.

## License

This project is licensed under the MIT License. See the LICENSE file for more details.