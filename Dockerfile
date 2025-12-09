FROM node:18-alpine AS build

WORKDIR /app

# Install dependencies
COPY package.json ./
RUN npm install

# Copy the rest of the app
COPY . .

# Build React app
RUN npm run build

# Production image
FROM node:18-alpine AS production
WORKDIR /app

# Copy compiled build
COPY --from=build /app/build ./build

# Install lightweight static server
RUN npm install -g serve

EXPOSE 8080
CMD ["serve", "-s", "build", "-l", "8080"]
