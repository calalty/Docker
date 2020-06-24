# specify base image
FROM node:14.4

# set a working directory for all commands to be run
WORKDIR /app

# copying package.json and package-lock.json
COPY package*.json ./

# install dependencies inside the container
RUN npm i

# copy source code to container
COPY ./ ./

# make bridge between our machine and container
EXPOSE 8080

# final command to run on server
CMD [ "npm", "start" ]

# build container: docker build -t express .
# run container: docker run -p 8080:3000 express