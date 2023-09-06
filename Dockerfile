FROM node:14
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install --legacy-peer-deps
RUN npx browserslist@latest --update-db
COPY . .
EXPOSE 3000
CMD [ "npm", "start" ]