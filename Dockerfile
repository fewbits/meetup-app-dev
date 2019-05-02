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
# COPY supervisord.conf
RUN ls -l /etc/supervisor
RUN exit 1

# And finally set the start command
CMD [ "npm", "start" ]
