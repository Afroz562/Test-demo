FROM node:14
WORKDIR /usr/src/app
COPY package.json .
RUN npm install 
COPY . .
EXPOSE 80
CMD ["node", "index.js"]
CMD SET EXPO_DEBUG=true
RUN npm config set package-lock false
