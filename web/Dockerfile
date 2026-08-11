# -------------------------
# Stage 1: Build the application
# -------------------------
FROM node:22-bookworm-slim AS builder

WORKDIR /build

# Install Git
RUN apt-get update && apt-get install -y git openssh-client && rm -rf /var/lib/apt/lists/*

RUN mkdir -p -m 0700 ~/.ssh && ssh-keyscan github.com >> ~/.ssh/known_hosts

# Clone the repository
ARG GITHUB_USERNAME=${GITHUB_USERNAME}
ARG GITHUB_TOKEN=${GITHUB_TOKEN}
ARG REPO_NAME=${REPO_NAME}
ARG BRANCH=${BRANCH}

# Allow overriding Vite build variables at build time via build args
ARG VITE_API_URL=${VITE_API_URL}
ARG VITE_PRIME_LICENSE=${VITE_PRIME_LICENSE}

# Export them as runtime environment variables (use values passed via build args)
ENV VITE_API_URL=${VITE_API_URL} \
	VITE_PRIME_LICENSE=${VITE_PRIME_LICENSE}

RUN git clone \
    --branch ${BRANCH} \
	https://${GITHUB_USERNAME}:${GITHUB_TOKEN}@github.com/${REPO_NAME}.git \
	app

# For local development, you can also copy the source code directly instead of cloning from GitHub
#COPY ./janick-mediaweb /build/app

WORKDIR /build/app

RUN npm ci

RUN VITE_API_URL=${VITE_API_URL} VITE_PRIME_LICENSE=${VITE_PRIME_LICENSE} npm run build

# -------------------------
# Stage 2: Run the application in nginx
# -------------------------
FROM nginx:1.27-alpine

COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY --from=builder /build/app/dist /usr/share/nginx/html

EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]