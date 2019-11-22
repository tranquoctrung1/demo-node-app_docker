# specifies node version 

FROM node:10

# set working directory 
WORKDIR /usr/src/app

# install all dependences 
COPY package*.json ./
RUN npm install 

# copy source code in working directory from computer to container
COPY . .

# Specify port app runs on
EXPOSE 3000


# when starting container the line below will run by using cmd
CMD [ "npm", "start" ]