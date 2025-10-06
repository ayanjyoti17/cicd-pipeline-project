# Start with a lightweight version of Node.js
FROM node:18-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the package.json file and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of our application's code
COPY . .

# Tell Docker what port our app runs on
EXPOSE 8080

# The command to run when the container starts
CMD [ "node", "app.js" ]
