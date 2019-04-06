# Let's use some really lightweight image
FROM node:8-alpine

# Add our project's directory to the image
ADD app /app

# Install dependencies
WORKDIR /app
RUN [ "npm", "install" ]

# And finally set the start command
CMD [ "npm", "start" ]