FROM node:14
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build
CMD npm install -g serve && serve -s build -l 5000
EXPOSE 5000