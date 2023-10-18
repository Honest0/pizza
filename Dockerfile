FROM node:14
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
RUN npx browserslist@latest --update-db
COPY . .
CMD ["npm", "run", "start"]
EXPOSE 3000