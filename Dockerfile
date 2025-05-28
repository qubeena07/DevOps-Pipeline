FROM node:18

LABEL maintainer="qubeena7@gmail.com"

WORKDIR /app

# Copy package.json and package-lock.json first (if you have them)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of your app files
COPY . .

# Healthcheck (update if your app runs on a different port)
HEALTHCHECK --interval=5s --timeout=5s CMD curl -f http://localhost:8000/ || exit 1

# Expose the port your app runs on
EXPOSE 8000

# Start your app - update 'app.js' to your actual entry point file
CMD ["node", "app.js"]
