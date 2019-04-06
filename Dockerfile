# Let's use some really lightweight image
FROM node:8-alpine

# Add our project to the image
ADD index.js package.json test views /app

# Install dependencies
WORKDIR /app
RUN [ "npm", "install" ]

# And finally set the start command
CMD [ "npm", "start" ]