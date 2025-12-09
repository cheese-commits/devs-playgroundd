FROM node:18-alpine as build

WORKDIR /app

# Install dependencies for building
COPY package.json pnpm-lock.yaml ./
# Use npm by default; let npm install fetch dependencies based on package.json
RUN npm install

COPY . .
RUN npm run build

# Production image
FROM node:18-alpine as production
WORKDIR /app
COPY --from=build /app/build ./build

# lightweight static server
RUN npm install -g serve

EXPOSE 8080
CMD ["serve", "-s", "build", "-l", "8080"]