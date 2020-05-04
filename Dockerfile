FROM mhart/alpine-node
WORKDIR /usr/app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 9030
CMD ["npm", "run", "start"]
