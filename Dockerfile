# Let's use some really lightweight image
FROM node:8-alpine

# Testing
RUN apk update
RUN apk add supervisor
RUN pip install supervisor
RUN exit 1

# Add our project to the image
WORKDIR /app
COPY index.js index.js
COPY package.json package.json
COPY test test
COPY views views

# Install dependencies
RUN [ "npm", "install" ]

# And finally set the start command
CMD [ "npm", "start" ]
