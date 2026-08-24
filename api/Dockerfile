# -------------------------
# Stage 1: Build the application
# -------------------------
FROM maven:3.9.16-eclipse-temurin-25 AS builder

WORKDIR /build

# Install Git
RUN apt-get update && apt-get install -y git openssh-client && rm -rf /var/lib/apt/lists/*

RUN mkdir -p -m 0700 ~/.ssh && ssh-keyscan github.com >> ~/.ssh/known_hosts

# Clone the repository
ARG GITHUB_USERNAME=${GITHUB_USERNAME}
ARG GITHUB_TOKEN=${GITHUB_TOKEN}
ARG REPO_NAME=${REPO_NAME}
ARG BRANCH=${BRANCH}

ENV SPRING_DATASOURCE_URL=${SPRING_DATASOURCE_URL} \
		SPRING_DATASOURCE_USERNAME=${SPRING_DATASOURCE_USERNAME} \
		SPRING_DATASOURCE_PASSWORD=${SPRING_DATASOURCE_PASSWORD} \
		SPRING_ALLOWED_ORIGIN=${SPRING_ALLOWED_ORIGIN}

RUN git clone \
    --branch ${BRANCH} \
	https://${GITHUB_USERNAME}:${GITHUB_TOKEN}@github.com/${REPO_NAME}.git \
	app

# For local development, you can also copy the source code directly instead of cloning from GitHub
#COPY ./janick-mediaapi /build/app

WORKDIR /build/app

# Build the application
RUN mvn clean package -DskipTests -P prod

# -------------------------
# Stage 2: Run the application
# -------------------------
FROM eclipse-temurin:25-jre

WORKDIR /app

# Copy the packaged JAR
COPY --from=builder /build/app/target/*.jar app.jar

# Expose the Spring Boot port
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]