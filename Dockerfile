FROM node:14-alpine

#RUN mkdir -p /app/node_modules && chown _R node:node /app
WORKDIR /app

COPY ["package.json", "package-lock.json","/app/"]

#USER node
RUN npm install

#COPY --chown=node:node . .
COPY . .

#EXPOSE 8080

CMD ["node","app.js"]
