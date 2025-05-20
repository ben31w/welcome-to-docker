# Start your image with a node base image
FROM node:18-alpine

# The /app directory should act as the main application directory
WORKDIR /app

# Copy the app package and package-lock.json file
COPY package*.json ./

# Copy local directories to the current local directory of our docker image (/app)
COPY ./src ./src
COPY ./public ./public

# Install node packages, install serve, build the app, and remove dependencies at the end
# To solve certificate errors (npm install taking forever), add config line.
# https://forums.docker.com/t/npm-install-in-docker-tutorial-is-taking-forever/139328/10
RUN npm config set strict-ssl
RUN npm install --verbose 
RUN npm install --verbose -g serve 
RUN npm run build 
RUN rm -fr node_modules

EXPOSE 3000

# Start the app using serve command
CMD [ "serve", "-s", "build" ]