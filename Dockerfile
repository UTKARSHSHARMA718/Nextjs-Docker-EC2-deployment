# Docker file for NextJS Application 
FROM node:20-alpine3.18 as builder 

# Creating an app directory 
WORKDIR /app

# copying the package-lock file 
COPY package*.json ./

# running npm install here 
RUN npm install

# copying rest of the files 
COPY . . 

# creating a build folder
RUN npm run build

# exposing the host port
EXPOSE 3000

# running the application 
CMD ["npm", "run", "start"]