#pulling the image from docker hub
FROM node
#Setting the working directory in the image. It tells docker to run all the commands from this directory
WORKDIR /app
COPY package.json /app
#Which files that are on the local machine should go into the image
RUN npm install
#COPY . . means copy everything from the current directory to the current directory in the image
COPY . /app
#EXPOSE is used to expose the port that the container is listening on
EXPOSE 80
#The command that should be run when the container is started
CMD ["node", "server.js"]
