# Let's use some really lightweight image
FROM node:8-alpine

# Add our project to the image
WORKDIR /app
COPY index.js index.js
COPY package.json package.json
COPY test test
COPY views views

# Install dependencies
RUN [ "npm", "install" ]

# Install and configure supervisord
RUN apk add supervisor
COPY supervisord.conf /etc/supervisord.conf

# And finally set the start command
ENTRYPOINT ["supervisord", "--nodaemon", "-c", "/etc/supervisord.conf"]
