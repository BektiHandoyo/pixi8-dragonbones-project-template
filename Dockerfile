# --- Base Image ---
FROM node:22 AS base
WORKDIR /app

# --- Install tools ---
RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

# --- Copy project files ---
COPY . .

# --- Run build script ---
RUN chmod +x build.sh && ./build.sh

# --- Final Run ---
EXPOSE 8080
CMD ["npm", "run", "dev", "--", "--host", "0.0.0.0"]
